# OOP

Object-oriented programming (OOP) is a programming paradigm based on the concept of "objects", which can contain data (attributes) and code (methods).

## Classes

- **Description** A class is a blueprint for creating objects in Python. It defines the attributes (variables) and methods (functions) that objects of the class will have. Think of a class as a template or a prototype for creating objects with similar characteristics and behaviors.

- **Example**
  ```python
  class Car:
      def __init__(self, brand, model):
          self.brand = brand
          self.model = model
  
      def drive(self):
          print(f"Driving the {self.brand} {self.model}")
  ```
  
  In this example, `Car` is a class representing a generic car. It has two attributes (`brand` and `model`) and a method `drive()` to simulate driving.

## Inheritance

- **Description** Inheritance is a mechanism in object-oriented programming that allows a class (subclass) to inherit attributes and methods from another class (superclass). The subclass can then extend or override the inherited attributes and methods, promoting code reuse and enabling hierarchical relationships between classes.

- **Example**
  ```python
  class ElectricCar(Car):
      def __init__(self, brand, model, battery_capacity):
          super().__init__(brand, model)
          self.battery_capacity = battery_capacity
  
      def charge(self):
          print(f"Charging the {self.brand} {self.model}")
  ```
  
  In this example, `ElectricCar` is a subclass of `Car`, inheriting its attributes (`brand` and `model`) and methods (`drive()`). Additionally, `ElectricCar` adds a new attribute `battery_capacity` and a new method `charge()` specific to electric cars.

## Methods

- **Description** Methods are functions defined within a class that operate on the class's attributes. They encapsulate behavior related to the class and can be called on objects of the class using dot notation (`object.method()`). Methods can access and modify the object's attributes.

- **Example**
  ```python
  my_car = Car("Toyota", "Corolla")
  my_car.drive()  # Calling the drive() method
  
  my_electric_car = ElectricCar("Tesla", "Model S", 100)
  my_electric_car.drive()  # Inherited method from Car class
  my_electric_car.charge()  # Method specific to ElectricCar class
  ```
  
  In this example, we create objects `my_car` and `my_electric_car` of classes `Car` and `ElectricCar` respectively. We then call the `drive()` method on both objects to simulate driving. Since `ElectricCar` inherits from `Car`, it can also call the `drive()` method. Additionally, we call the `charge()` method on `my_electric_car` to simulate charging, which is specific to electric cars.

Classes, inheritance, and methods is fundamental for designing and implementing object-oriented solutions in Python. They enable modular, reusable, and maintainable code structures.

[Back](../python.md) | [Code](../../code.md)