# Data Types
These are the base data types in GolemScript. They can be assigned to [variables](keywords.md#assignment),
used in [expressions](syntax.md#expressions), or passed as parameters to [functions](keywords.md#functional).

```ruby
# Assign to variable
let arr = [1, 2, 3, 4]

# Use in expression
"a" + "b" + "c"

# Pass to function
myfunc({id: 'foo', value: 'bar'})
```

## Undefined
Undefined is the default value for variables that have not been assigned.  
Functions without return statements will also return undefined.  
Indexing a literal that would not return a result also yields undefined.

## Boolean
Booleans are written as `true` and `false`.

## Integer
**GolemScript currently only supports integers as numerics, no floats or doubles.**

Integers are represented by the digits 0-9, and have the range of  
`-2,147,483,648 (-2^31)` to `2,147,483,647 (2^31-1)`.

```title="Examples of valid Integers"
17
-1
983921
```

```title="Examples of invalid Integers"
fourtytwo
sixty9
-2147483650
```

## String
Strings can contain any character, and must start and end with either `"` or `'`, with the closing quote matching the opening quote.  
Quotes used within a string can be escaped with `\`. Consequently, backslashes in a string must themselves be escaped with a backslash.

```ruby title="Examples of valid Strings"
"Hello, World!"
'And then I said "Hello there!"'
"You've cat to be \"kitten!\""
```

```ruby title="Examples of invalid Strings"
"Goodbye, Earth?'
'What's up?'
"UTF-8 Contains \"3MB" of characters!"
```

Strings can be indexed with a following index integer, contained in square brackets.

```ruby title="Example of a String being indexed"
"Hello"[3] # => "l"
```

## Regex
Regex describes a pattern for a regular expression, and can be used in the [match](stdlib.md#match) function.  
They are written as a regular expression pattern, between two `/`.

For more details on valid regular expressions, see the [regex library](https://modrinth.com/datapack/regex){target=_blank}.

```ruby title="Examples of valid Regexes"
/hello?world/
/12+3/
```

## Resource
Resource is a data type exclusive to Code of Copper, and mirrors the internal resource naming of Minecraft.  
It is defined as a namespace and id, separated by a `:`. Namespaces and ids follow the same constraints as variable names.  
Optionally, the namespace can be omitted, at which point it will default to `minecraft` as the namespace.

```title="Examples of valid Resources"
minecraft:stone
bot:golem
:diamond
```

Resources can be indexed with either square bracket or dot parameters.

```title="Example of Resources being indexed"
let res1 = foo:bar
res1.id # => "bar"

let res2 = :stone
res2["namespace"] # => "minecraft"
```

## Array
Arrays can contain a list of any data type, separated by commas. The list is enclosed in square brackets.  
Arrays may span multiple lines.

```ruby title="Examples of valid Arrays"
[1,2,3]
[
  "foo",
  :bar,
  ["b", "a", "z"]
]
```

```ruby title="Examples of invalid Arrays"
[1, "foo"
[
  'Testing",
  :hello_world
]
```

Arrays can be indexed with a following index integer, contained in square brackets.

```ruby title="Example of an Array being indexed"
let arr1 = [1,2,3]
arr1[1] # => 2

let arr2 = ["foo", "bar", "baz"]
let i = 2

arr2[i] # => "baz"
```

## Object
Objects contain key-value pairs, with the values being any data type. Keys, however, must conform to variable naming.

```ruby title="Example of valid Objects"
{a: 1, b: "two"}
{
  foo: {id: "poggers", colour: "beige"},
  bar: [1, 2, 3]
}
```

```ruby title="Example of invalid Objects"
{12: "error", minecraft:diamond: /mox/}
{
  comma: "missing"
  parser: "error"
}
```

Objects can be indexed with either square bracket or dot parameters.

```rb title="Example of Objects being indexed"
let obj = {a: "foo", b: "bar", c: "baz"}
obj.b # => "bar"
obj["a"] # => "foo"

let i = "c"
obj[i] # => "baz"
```

## Proc
A proc, short for process, is a function value that can be assigned to variables, etc.  
You can pass it as arguments, just like a data-type, or call it, just like a [function](keywords.md#functional).  
There are several ways to define procs.  

You can bind an existing function to a value.
```ruby
let write = -> print # write is a value that refers to the "print" builtin function
write("Hello, world!") # Prints "Hello, world!"

func add(a, b)
  return a + b
end

let sum = -> add # sum refers to the custom function "add"
sum(2,3) # => 5
```

You can also define a proc inline.
```ruby
# return is implicit here
let sum = -> (a,b) a + b # "sum" takes two arguments, a and b, and returns `a + b`
sum(1,2) # 3

# return needed to produce a value
let complex_proc = -> (a, b) {
  do_something(a, b)
  print("Doing stuff...")
  return a
}
complex_proc("foo", 42) # runs all code in the block of "complex_proc"
```

## Enumerable
An enumarable is not a data type on its own, but rather a collection of data types, for the ease of documentation.  
An enumerable is any type that has a series of sub-elements, and can be indexed.
The current types that belong to the enumerable category are:  
- [string](#string)  
- [array](#array)  
- [object](#object)  
