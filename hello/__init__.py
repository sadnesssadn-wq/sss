__all__ = ["greet"]

def greet(name: str | None = None) -> str:
    if name is None or str(name).strip() == "":
        return "Hello, World!"
    return f"Hello, {name}!"
