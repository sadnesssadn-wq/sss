#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
Threat Intelligence API clients: FOFA and Shodan

Notes
- Only use against assets you own or are explicitly authorized to test.
- API credentials are read from environment variables in the caller tool.
"""

from __future__ import annotations

import base64
import json
from typing import Dict, List, Optional

import requests


class HttpError(RuntimeError):
    pass


class FofaClient:
    """Minimal FOFA client for keyword query.

    API docs (reference semantics based on public docs; behavior may vary):
      GET https://fofa.info/api/v1/search/all
        params:
          - email
          - key
          - qbase64 (base64(query))
          - size (int)
          - fields (comma-separated)
    """

    def __init__(self, email: str, key: str, timeout_seconds: int = 15) -> None:
        self.email = email
        self.key = key
        self.timeout_seconds = timeout_seconds
        self.base_url = "https://fofa.info/api/v1"

    def search(
        self,
        query: str,
        size: int = 100,
        fields: Optional[List[str]] = None,
    ) -> List[Dict[str, object]]:
        if not query:
            return []
        if fields is None:
            fields = ["host", "port", "ip", "title"]

        qbase64 = base64.b64encode(query.encode("utf-8")).decode("ascii")
        params = {
            "email": self.email,
            "key": self.key,
            "qbase64": qbase64,
            "size": max(1, min(size, 10000)),
            "fields": ",".join(fields),
        }
        url = f"{self.base_url}/search/all"
        resp = requests.get(
            url,
            params=params,
            timeout=self.timeout_seconds,
            headers={
                "Accept": "application/json",
                "User-Agent": "ti-clients/1.0 (+https://example.local)",
            },
        )
        if resp.status_code >= 400:
            raise HttpError(f"FOFA HTTP {resp.status_code}: {resp.text[:200]}")
        data = resp.json()
        # Expected shape: {"error": false, "results": [[field0, field1, ...], ...]}
        results = data.get("results", [])
        mapped: List[Dict[str, object]] = []
        for row in results:
            if isinstance(row, list):
                entry = {fields[i]: row[i] if i < len(row) else None for i in range(len(fields))}
            elif isinstance(row, dict):
                entry = row
            else:
                entry = {"raw": row}
            mapped.append(entry)
        return mapped


class ShodanClient:
    """Minimal Shodan client for query search.

    API docs (reference semantics based on public docs):
      GET https://api.shodan.io/shodan/host/search?key=KEY&query=QUERY
    """

    def __init__(self, api_key: str, timeout_seconds: int = 15) -> None:
        self.api_key = api_key
        self.timeout_seconds = timeout_seconds
        self.base_url = "https://api.shodan.io"

    def search(self, query: str, limit: int = 100) -> List[Dict[str, object]]:
        if not query:
            return []
        params = {"key": self.api_key, "query": query}
        url = f"{self.base_url}/shodan/host/search"
        resp = requests.get(
            url,
            params=params,
            timeout=self.timeout_seconds,
            headers={
                "Accept": "application/json",
                "User-Agent": "ti-clients/1.0 (+https://example.local)",
            },
        )
        if resp.status_code >= 400:
            raise HttpError(f"Shodan HTTP {resp.status_code}: {resp.text[:200]}")
        data = resp.json()
        matches = data.get("matches", [])
        # Normalize minimal fields
        normalized: List[Dict[str, object]] = []
        for m in matches[: max(1, min(limit, 10000))]:
            normalized.append(
                {
                    "ip": m.get("ip_str") or m.get("ip"),
                    "port": m.get("port"),
                    "org": m.get("org"),
                    "hostnames": m.get("hostnames"),
                    "transport": m.get("transport"),
                    "product": m.get("product"),
                    "timestamp": m.get("timestamp"),
                }
            )
        return normalized

