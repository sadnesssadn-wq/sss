"""
Geometric Calculations Module

This module provides functions to perform various geometric calculations
including area, perimeter, volume, and surface area for common shapes.
"""

import math
from typing import Tuple


class Circle:
    """Circle geometric calculations."""
    
    @staticmethod
    def area(radius: float) -> float:
        """Calculate the area of a circle."""
        if radius < 0:
            raise ValueError("Radius cannot be negative")
        return math.pi * radius ** 2
    
    @staticmethod
    def circumference(radius: float) -> float:
        """Calculate the circumference of a circle."""
        if radius < 0:
            raise ValueError("Radius cannot be negative")
        return 2 * math.pi * radius


class Rectangle:
    """Rectangle geometric calculations."""
    
    @staticmethod
    def area(length: float, width: float) -> float:
        """Calculate the area of a rectangle."""
        if length < 0 or width < 0:
            raise ValueError("Length and width cannot be negative")
        return length * width
    
    @staticmethod
    def perimeter(length: float, width: float) -> float:
        """Calculate the perimeter of a rectangle."""
        if length < 0 or width < 0:
            raise ValueError("Length and width cannot be negative")
        return 2 * (length + width)
    
    @staticmethod
    def diagonal(length: float, width: float) -> float:
        """Calculate the diagonal of a rectangle."""
        if length < 0 or width < 0:
            raise ValueError("Length and width cannot be negative")
        return math.sqrt(length ** 2 + width ** 2)


class Triangle:
    """Triangle geometric calculations."""
    
    @staticmethod
    def area(base: float, height: float) -> float:
        """Calculate the area of a triangle using base and height."""
        if base < 0 or height < 0:
            raise ValueError("Base and height cannot be negative")
        return 0.5 * base * height
    
    @staticmethod
    def area_heron(a: float, b: float, c: float) -> float:
        """Calculate the area of a triangle using Heron's formula."""
        if a < 0 or b < 0 or c < 0:
            raise ValueError("Side lengths cannot be negative")
        if a + b <= c or a + c <= b or b + c <= a:
            raise ValueError("Invalid triangle: side lengths don't satisfy triangle inequality")
        s = (a + b + c) / 2
        return math.sqrt(s * (s - a) * (s - b) * (s - c))
    
    @staticmethod
    def perimeter(a: float, b: float, c: float) -> float:
        """Calculate the perimeter of a triangle."""
        if a < 0 or b < 0 or c < 0:
            raise ValueError("Side lengths cannot be negative")
        return a + b + c


class Sphere:
    """Sphere geometric calculations."""
    
    @staticmethod
    def volume(radius: float) -> float:
        """Calculate the volume of a sphere."""
        if radius < 0:
            raise ValueError("Radius cannot be negative")
        return (4/3) * math.pi * radius ** 3
    
    @staticmethod
    def surface_area(radius: float) -> float:
        """Calculate the surface area of a sphere."""
        if radius < 0:
            raise ValueError("Radius cannot be negative")
        return 4 * math.pi * radius ** 2


class Cylinder:
    """Cylinder geometric calculations."""
    
    @staticmethod
    def volume(radius: float, height: float) -> float:
        """Calculate the volume of a cylinder."""
        if radius < 0 or height < 0:
            raise ValueError("Radius and height cannot be negative")
        return math.pi * radius ** 2 * height
    
    @staticmethod
    def surface_area(radius: float, height: float) -> float:
        """Calculate the surface area of a cylinder."""
        if radius < 0 or height < 0:
            raise ValueError("Radius and height cannot be negative")
        return 2 * math.pi * radius * (radius + height)


class Cube:
    """Cube geometric calculations."""
    
    @staticmethod
    def volume(side: float) -> float:
        """Calculate the volume of a cube."""
        if side < 0:
            raise ValueError("Side length cannot be negative")
        return side ** 3
    
    @staticmethod
    def surface_area(side: float) -> float:
        """Calculate the surface area of a cube."""
        if side < 0:
            raise ValueError("Side length cannot be negative")
        return 6 * side ** 2


class RectangularPrism:
    """Rectangular prism (box) geometric calculations."""
    
    @staticmethod
    def volume(length: float, width: float, height: float) -> float:
        """Calculate the volume of a rectangular prism."""
        if length < 0 or width < 0 or height < 0:
            raise ValueError("Dimensions cannot be negative")
        return length * width * height
    
    @staticmethod
    def surface_area(length: float, width: float, height: float) -> float:
        """Calculate the surface area of a rectangular prism."""
        if length < 0 or width < 0 or height < 0:
            raise ValueError("Dimensions cannot be negative")
        return 2 * (length * width + length * height + width * height)


def distance_2d(x1: float, y1: float, x2: float, y2: float) -> float:
    """Calculate the distance between two points in 2D space."""
    return math.sqrt((x2 - x1) ** 2 + (y2 - y1) ** 2)


def distance_3d(x1: float, y1: float, z1: float, x2: float, y2: float, z2: float) -> float:
    """Calculate the distance between two points in 3D space."""
    return math.sqrt((x2 - x1) ** 2 + (y2 - y1) ** 2 + (z2 - z1) ** 2)


def midpoint_2d(x1: float, y1: float, x2: float, y2: float) -> Tuple[float, float]:
    """Calculate the midpoint between two points in 2D space."""
    return ((x1 + x2) / 2, (y1 + y2) / 2)


def midpoint_3d(x1: float, y1: float, z1: float, x2: float, y2: float, z2: float) -> Tuple[float, float, float]:
    """Calculate the midpoint between two points in 3D space."""
    return ((x1 + x2) / 2, (y1 + y2) / 2, (z1 + z2) / 2)
