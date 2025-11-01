# Geometric Calculations Library

A comprehensive Python library for performing geometric calculations on common 2D and 3D shapes.

## Features

### 2D Shapes
- **Circle**: Calculate area and circumference
- **Rectangle**: Calculate area, perimeter, and diagonal
- **Triangle**: Calculate area (base-height and Heron's formula) and perimeter

### 3D Shapes
- **Sphere**: Calculate volume and surface area
- **Cylinder**: Calculate volume and surface area
- **Cube**: Calculate volume and surface area
- **Rectangular Prism**: Calculate volume and surface area

### Utility Functions
- **Distance Calculations**: Calculate distance between two points in 2D or 3D space
- **Midpoint Calculations**: Calculate midpoint between two points in 2D or 3D space

## Installation

```bash
pip install -r requirements.txt
```

## Usage

```python
from geometry import Circle, Rectangle, Triangle, Sphere, distance_2d

# Calculate circle area
area = Circle.area(radius=5)
print(f"Circle area: {area}")

# Calculate rectangle properties
rect_area = Rectangle.area(length=10, width=5)
rect_perimeter = Rectangle.perimeter(length=10, width=5)
print(f"Rectangle area: {rect_area}, perimeter: {rect_perimeter}")

# Calculate triangle area using Heron's formula
triangle_area = Triangle.area_heron(a=3, b=4, c=5)
print(f"Triangle area: {triangle_area}")

# Calculate sphere volume
sphere_vol = Sphere.volume(radius=3)
print(f"Sphere volume: {sphere_vol}")

# Calculate distance between two points
dist = distance_2d(x1=0, y1=0, x2=3, y2=4)
print(f"Distance: {dist}")
```

## Running Tests

Run the test suite using pytest:

```bash
pytest test_geometry.py -v
```

## Error Handling

All functions include input validation and will raise `ValueError` exceptions for:
- Negative dimensions (radius, length, width, height, etc.)
- Invalid triangle configurations (sides that don't satisfy triangle inequality)

## Examples

### Circle Calculations
```python
from geometry import Circle

# Area of circle with radius 5
area = Circle.area(5)  # Returns 78.54

# Circumference of circle with radius 5
circumference = Circle.circumference(5)  # Returns 31.42
```

### 3D Shape Calculations
```python
from geometry import Cube, Sphere, Cylinder

# Cube with side length 3
cube_volume = Cube.volume(3)  # Returns 27
cube_surface = Cube.surface_area(3)  # Returns 54

# Sphere with radius 3
sphere_volume = Sphere.volume(3)  # Returns 113.10
sphere_surface = Sphere.surface_area(3)  # Returns 113.10

# Cylinder with radius 3 and height 5
cylinder_volume = Cylinder.volume(3, 5)  # Returns 141.37
cylinder_surface = Cylinder.surface_area(3, 5)  # Returns 150.80
```

### Point Calculations
```python
from geometry import distance_2d, distance_3d, midpoint_2d, midpoint_3d

# Distance between two 2D points
dist_2d = distance_2d(0, 0, 3, 4)  # Returns 5.0

# Distance between two 3D points
dist_3d = distance_3d(0, 0, 0, 2, 3, 6)  # Returns 7.0

# Midpoint of two 2D points
mid_2d = midpoint_2d(0, 0, 4, 6)  # Returns (2.0, 3.0)

# Midpoint of two 3D points
mid_3d = midpoint_3d(0, 0, 0, 4, 6, 8)  # Returns (2.0, 3.0, 4.0)
```

## License

This project is open source and available for use.
