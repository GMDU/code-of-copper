# Data Types

## Undefined
Undefined is the default value for variables that have not been assigned.  
Functions without return statements will also return undefined.  
Indexing a literal that would not return a result also yields undefined.

## Boolean
Booleans are written as `true` and `false`.

## Integer
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
foo:bar.id # => "bar"
:stone["namespace"] # => "minecraft"
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
[1,2,3][1] # => 2
["foo", "bar", "baz"][i] # i = 2, => "baz"
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

```ruby title="Example of Objects being indexed"
{a: "foo", b: "bar", c: "baz"}.b # => "bar"
{a: "foo", b: "bar", c: "baz"}["a"] # => "foo"
{a: "foo", b: "bar", c: "baz"}[i] # i = "c", => "baz"
```