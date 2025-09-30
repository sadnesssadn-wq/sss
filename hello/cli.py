import argparse
from . import greet


def parse_args(argv: list[str] | None = None) -> argparse.Namespace:
    parser = argparse.ArgumentParser(description="Simple hello CLI")
    parser.add_argument("--name", "-n", help="name to greet", default=None)
    return parser.parse_args(argv)


def main(argv: list[str] | None = None) -> int:
    args = parse_args(argv)
    message = greet(args.name)
    print(message)
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
