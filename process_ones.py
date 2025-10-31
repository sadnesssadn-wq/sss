#!/usr/bin/env python3
"""
Block of Ones Processor
Processes and analyzes blocks of ones for various security and data analysis tasks.
"""

import sys
import argparse
from typing import List, Dict


def analyze_block(data: str) -> Dict:
    """Analyze a block of ones and provide comprehensive statistics."""
    count = len(data)
    binary_length = count.bit_length()
    
    # Convert to binary representation
    binary = bin(count)[2:] if count > 0 else "0"
    
    # Check if all are ones
    all_ones = all(c == '1' for c in data)
    
    return {
        'length': count,
        'all_ones': all_ones,
        'binary_length': binary_length,
        'binary_representation': binary,
        'hex_representation': hex(count)[2:].upper(),
        'decimal_value': count if all_ones else None
    }


def convert_patterns(data: str) -> Dict[str, str]:
    """Convert block of ones to various representations."""
    count = len(data)
    
    return {
        'decimal': str(count),
        'binary': bin(count)[2:],
        'hex': hex(count)[2:].upper(),
        'octal': oct(count)[2:],
        'ascii': chr(count % 256) if 0 <= count % 256 < 128 else f'[non-printable: {count % 256}]'
    }


def generate_payloads(count: int) -> Dict[str, str]:
    """Generate various payload formats for security testing."""
    return {
        'ones_string': '1' * count,
        'binary_string': bin(count)[2:],
        'hex_string': hex(count)[2:],
        'base64_like': 'A' * (count // 4) + '=' * (count % 4),
        'repeat_pattern': f'{"1" * min(count, 100)}...' if count > 100 else '1' * count
    }


def detect_patterns(data: str) -> List[str]:
    """Detect patterns in the data."""
    patterns = []
    
    if all(c == '1' for c in data):
        patterns.append("Uniform block of ones")
    
    # Check for repeating patterns
    for pattern_len in [2, 3, 4, 5]:
        if len(data) % pattern_len == 0:
            pattern = data[:pattern_len]
            if data == pattern * (len(data) // pattern_len):
                patterns.append(f"Repeating pattern of length {pattern_len}: {pattern}")
                break
    
    # Check for binary patterns
    if len(data) == 1:
        patterns.append("Single bit")
    elif len(data) <= 8:
        patterns.append(f"Fits in {len(data)} bits")
    
    return patterns


def main():
    parser = argparse.ArgumentParser(
        description='Process and analyze blocks of ones',
        formatter_class=argparse.RawDescriptionHelpFormatter,
        epilog="""
Examples:
  %(prog)s 111111111111
  %(prog)s --input-file data.txt
  %(prog)s --generate 12
  %(prog)s --analyze 111111111111
        """
    )
    
    parser.add_argument('input', nargs='?', help='Input string (default: read from stdin or use 111111111111)')
    parser.add_argument('-f', '--input-file', help='Read input from file')
    parser.add_argument('-a', '--analyze', action='store_true', help='Perform detailed analysis')
    parser.add_argument('-c', '--convert', action='store_true', help='Show conversions')
    parser.add_argument('-g', '--generate', type=int, metavar='N', help='Generate block of N ones')
    parser.add_argument('-p', '--payloads', action='store_true', help='Generate payload formats')
    parser.add_argument('--all', action='store_true', help='Show all information')
    
    args = parser.parse_args()
    
    # Get input data
    if args.generate:
        data = '1' * args.generate
        print(f"Generated block of {args.generate} ones\n")
    elif args.input_file:
        with open(args.input_file, 'r') as f:
            data = f.read().strip()
    elif args.input:
        data = args.input
    elif not sys.stdin.isatty():
        data = sys.stdin.read().strip()
    else:
        # Default: process the example
        data = "111111111111"
        print("Using default input: 111111111111\n")
    
    # Process the data
    if args.all or args.analyze:
        print("=" * 60)
        print("ANALYSIS")
        print("=" * 60)
        analysis = analyze_block(data)
        for key, value in analysis.items():
            print(f"{key.replace('_', ' ').title()}: {value}")
        print()
        
        patterns = detect_patterns(data)
        if patterns:
            print("Detected Patterns:")
            for pattern in patterns:
                print(f"  - {pattern}")
        print()
    
    if args.all or args.convert:
        print("=" * 60)
        print("CONVERSIONS")
        print("=" * 60)
        conversions = convert_patterns(data)
        for key, value in conversions.items():
            print(f"{key.upper()}: {value}")
        print()
    
    if args.all or args.payloads:
        print("=" * 60)
        print("PAYLOAD FORMATS")
        print("=" * 60)
        payloads = generate_payloads(len(data))
        for key, value in payloads.items():
            print(f"{key.replace('_', ' ').title()}: {value}")
        print()
    
    # If no flags specified, do a basic analysis
    if not any([args.analyze, args.convert, args.payloads, args.all]):
        analysis = analyze_block(data)
        print(f"Length: {analysis['length']}")
        print(f"Binary: {analysis['binary_representation']}")
        print(f"Hex: {analysis['hex_representation']}")
        patterns = detect_patterns(data)
        if patterns:
            print(f"Patterns: {', '.join(patterns)}")


if __name__ == '__main__':
    main()
