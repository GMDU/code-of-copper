# Glossary

## Data types
Types that are not data types on their own, but collections of types for the purpose of documentation.

### Enumerable
An enumerable is any type that has a series of sub-elements, and can be indexed.  
The current types that belong to the enumerable category are:  
- [string](data_types.md#string)  
- [array](data_types.md##array)  
- [object](data_types.md##object)  

#### Elements
Different enumerables have different elements over which you can iterate.  
If a proc is called with element of multiple values, each value is passed as a separate argument.  

For strings, each element is a string containing this next character of the string.  
For arrays, each element is just the next value in the array.  
For objects, there are two values per element: A string of the key, and the value of the next key-value pair.  

### Character
A character is a string with only one character.  
If a function takes a character as a parameter, it uses the first character of the string given.

### Sizeable
Any data type that has a well defined [size](#size).

## Properties
Properties of a certain value, which are used internally.

### Size
The numeric quantity of a value.  
The size of [undefined](data_types.md#undefined) is `0`.  
The size of a [boolean](data_types.md#boolean) is `1`, if true, `0` if false.  
The size of an [integer](data_types.md#integer) is its value.  
The size of a [string](data_types.md#string) is its length.  
The size of an [array](data_types.md#array) is its length.  
The size of an [object](data_types.md#object) is the number of keys.  

### Truthiness
A value is truthy if its [size](#size) is not zero.  
A resource is always truthy.  
Undefined is always falsey (not truthy).  
