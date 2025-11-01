"""
Unit tests for the geometry module.
"""

import unittest
import math
from geometry import (
    Circle, Rectangle, Triangle, Sphere, Cylinder, Cube, RectangularPrism,
    distance_2d, distance_3d, midpoint_2d, midpoint_3d
)


class TestCircle(unittest.TestCase):
    """Tests for Circle class."""
    
    def test_area(self):
        self.assertAlmostEqual(Circle.area(5), math.pi * 25)
        self.assertAlmostEqual(Circle.area(0), 0)
    
    def test_area_negative_radius(self):
        with self.assertRaises(ValueError):
            Circle.area(-5)
    
    def test_circumference(self):
        self.assertAlmostEqual(Circle.circumference(5), 2 * math.pi * 5)
        self.assertAlmostEqual(Circle.circumference(0), 0)
    
    def test_circumference_negative_radius(self):
        with self.assertRaises(ValueError):
            Circle.circumference(-5)


class TestRectangle(unittest.TestCase):
    """Tests for Rectangle class."""
    
    def test_area(self):
        self.assertEqual(Rectangle.area(5, 10), 50)
        self.assertEqual(Rectangle.area(0, 10), 0)
    
    def test_area_negative_dimensions(self):
        with self.assertRaises(ValueError):
            Rectangle.area(-5, 10)
    
    def test_perimeter(self):
        self.assertEqual(Rectangle.perimeter(5, 10), 30)
        self.assertEqual(Rectangle.perimeter(0, 0), 0)
    
    def test_perimeter_negative_dimensions(self):
        with self.assertRaises(ValueError):
            Rectangle.perimeter(5, -10)
    
    def test_diagonal(self):
        self.assertAlmostEqual(Rectangle.diagonal(3, 4), 5)
        self.assertEqual(Rectangle.diagonal(0, 0), 0)
    
    def test_diagonal_negative_dimensions(self):
        with self.assertRaises(ValueError):
            Rectangle.diagonal(-3, 4)


class TestTriangle(unittest.TestCase):
    """Tests for Triangle class."""
    
    def test_area(self):
        self.assertEqual(Triangle.area(10, 5), 25)
        self.assertEqual(Triangle.area(0, 5), 0)
    
    def test_area_negative_dimensions(self):
        with self.assertRaises(ValueError):
            Triangle.area(-10, 5)
    
    def test_area_heron(self):
        # Test with a 3-4-5 right triangle
        self.assertAlmostEqual(Triangle.area_heron(3, 4, 5), 6)
    
    def test_area_heron_invalid_triangle(self):
        with self.assertRaises(ValueError):
            Triangle.area_heron(1, 2, 10)
    
    def test_area_heron_negative_sides(self):
        with self.assertRaises(ValueError):
            Triangle.area_heron(-3, 4, 5)
    
    def test_perimeter(self):
        self.assertEqual(Triangle.perimeter(3, 4, 5), 12)
        self.assertEqual(Triangle.perimeter(0, 0, 0), 0)
    
    def test_perimeter_negative_sides(self):
        with self.assertRaises(ValueError):
            Triangle.perimeter(-3, 4, 5)


class TestSphere(unittest.TestCase):
    """Tests for Sphere class."""
    
    def test_volume(self):
        self.assertAlmostEqual(Sphere.volume(3), (4/3) * math.pi * 27)
        self.assertEqual(Sphere.volume(0), 0)
    
    def test_volume_negative_radius(self):
        with self.assertRaises(ValueError):
            Sphere.volume(-3)
    
    def test_surface_area(self):
        self.assertAlmostEqual(Sphere.surface_area(3), 4 * math.pi * 9)
        self.assertEqual(Sphere.surface_area(0), 0)
    
    def test_surface_area_negative_radius(self):
        with self.assertRaises(ValueError):
            Sphere.surface_area(-3)


class TestCylinder(unittest.TestCase):
    """Tests for Cylinder class."""
    
    def test_volume(self):
        self.assertAlmostEqual(Cylinder.volume(3, 5), math.pi * 9 * 5)
        self.assertEqual(Cylinder.volume(0, 5), 0)
    
    def test_volume_negative_dimensions(self):
        with self.assertRaises(ValueError):
            Cylinder.volume(-3, 5)
    
    def test_surface_area(self):
        self.assertAlmostEqual(Cylinder.surface_area(3, 5), 2 * math.pi * 3 * 8)
    
    def test_surface_area_negative_dimensions(self):
        with self.assertRaises(ValueError):
            Cylinder.surface_area(3, -5)


class TestCube(unittest.TestCase):
    """Tests for Cube class."""
    
    def test_volume(self):
        self.assertEqual(Cube.volume(3), 27)
        self.assertEqual(Cube.volume(0), 0)
    
    def test_volume_negative_side(self):
        with self.assertRaises(ValueError):
            Cube.volume(-3)
    
    def test_surface_area(self):
        self.assertEqual(Cube.surface_area(3), 54)
        self.assertEqual(Cube.surface_area(0), 0)
    
    def test_surface_area_negative_side(self):
        with self.assertRaises(ValueError):
            Cube.surface_area(-3)


class TestRectangularPrism(unittest.TestCase):
    """Tests for RectangularPrism class."""
    
    def test_volume(self):
        self.assertEqual(RectangularPrism.volume(2, 3, 4), 24)
        self.assertEqual(RectangularPrism.volume(0, 3, 4), 0)
    
    def test_volume_negative_dimensions(self):
        with self.assertRaises(ValueError):
            RectangularPrism.volume(-2, 3, 4)
    
    def test_surface_area(self):
        self.assertEqual(RectangularPrism.surface_area(2, 3, 4), 52)
    
    def test_surface_area_negative_dimensions(self):
        with self.assertRaises(ValueError):
            RectangularPrism.surface_area(2, -3, 4)


class TestDistanceFunctions(unittest.TestCase):
    """Tests for distance calculation functions."""
    
    def test_distance_2d(self):
        self.assertAlmostEqual(distance_2d(0, 0, 3, 4), 5)
        self.assertEqual(distance_2d(0, 0, 0, 0), 0)
        self.assertAlmostEqual(distance_2d(-1, -1, 2, 3), 5)
    
    def test_distance_3d(self):
        self.assertAlmostEqual(distance_3d(0, 0, 0, 2, 3, 6), 7)
        self.assertEqual(distance_3d(0, 0, 0, 0, 0, 0), 0)
        self.assertAlmostEqual(distance_3d(-1, -1, -1, 1, 1, 1), math.sqrt(12))


class TestMidpointFunctions(unittest.TestCase):
    """Tests for midpoint calculation functions."""
    
    def test_midpoint_2d(self):
        self.assertEqual(midpoint_2d(0, 0, 4, 6), (2, 3))
        self.assertEqual(midpoint_2d(-2, -2, 2, 2), (0, 0))
        self.assertEqual(midpoint_2d(0, 0, 0, 0), (0, 0))
    
    def test_midpoint_3d(self):
        self.assertEqual(midpoint_3d(0, 0, 0, 4, 6, 8), (2, 3, 4))
        self.assertEqual(midpoint_3d(-2, -2, -2, 2, 2, 2), (0, 0, 0))
        self.assertEqual(midpoint_3d(0, 0, 0, 0, 0, 0), (0, 0, 0))


if __name__ == '__main__':
    unittest.main()
