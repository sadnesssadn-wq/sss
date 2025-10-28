def is_not_10(number):
    """
    Check if a number is not equal to 10.
    
    Args:
        number: The number to check
        
    Returns:
        bool: True if the number is not 10, False otherwise
    """
    return number != 10


if __name__ == "__main__":
    # Test cases
    test_cases = [5, 10, 0, -10, 10.0, 9, 11]
    
    for num in test_cases:
        result = is_not_10(num)
        print(f"is_not_10({num}): {result}")
