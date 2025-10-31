# Block of Ones Processor

A utility tool for processing and analyzing blocks of ones for security testing and data analysis.

## Usage

### Basic usage
```bash
python3 process_ones.py 111111111111
```

### Analyze mode
```bash
python3 process_ones.py --analyze 111111111111
```

### Convert to different bases
```bash
python3 process_ones.py --convert 111111111111
```

### Generate payloads
```bash
python3 process_ones.py --payloads 111111111111
```

### Show all information
```bash
python3 process_ones.py --all 111111111111
```

### Generate a block
```bash
python3 process_ones.py --generate 12
```

### Read from file
```bash
python3 process_ones.py --input-file data.txt
```

### Read from stdin
```bash
echo "111111111111" | python3 process_ones.py
```

## Features

- **Analysis**: Length, binary representation, hex, patterns
- **Conversions**: Decimal, binary, hex, octal, ASCII
- **Payload Generation**: Multiple formats for security testing
- **Pattern Detection**: Identify repeating patterns and characteristics

## Example Output

```bash
$ python3 process_ones.py --all 111111111111

============================================================
ANALYSIS
============================================================
Length: 12
All Ones: True
Binary Length: 4
Binary Representation: 1100
Hex Representation: C
Decimal Value: 12

Detected Patterns:
  - Uniform block of ones

============================================================
CONVERSIONS
============================================================
DECIMAL: 12
BINARY: 1100
HEX: C
OCTAL: 14
ASCII: [non-printable: 12]

============================================================
PAYLOAD FORMATS
============================================================
Ones String: 111111111111
Binary String: 1100
Hex String: c
Base64 Like: AAA
Repeat Pattern: 111111111111
```
