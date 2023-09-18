# Syntax

Code of Copper uses a familiar syntax, hoping to be easy to read and write with.

## Comments
Any line starting with a `#` is a commented line. Commented lines are ignored by the interpreter.

## Blocks
Blocks in Code of Copper are defined by a [keyword](keywords.md), and closed with the keyword [end](keywords.md#end).

For example, if statements in Code of Copper look as such:

```ruby
if condition
  ...
end
```

## Variables
Variables are referenced simply by their name, which must contain only alphanumeric characters (0-9,A-z, and _).  
A variable must not start with a number.

```title="Examples of Valid Variables"
foo_Bar13
helloWorld
_greetings
```

```title="Examples of Invalid Variables"
28Foo_
&bar
```

## Functions
Functions can be called using the function name, followed by parentheses containing comma separated arguments.
Function names follow the same constraints as variables.

For example, here is the [move](stdlib.md#move) function:
```ruby
move(1, 0, 0)
```

## Expressions
Expressions can contain literals and operators. Expressions may also be nested using parentheses.

Here is an example expression:
```ruby
3 + (5 * 2)
```