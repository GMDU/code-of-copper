<div align="center">
  <a href="https://github.com/GMDU/code-of-copper">
    <img src="docs/assets/logo.png" alt="Logo" width="128" height="128">
  </a>

<strong><h2 align="center">Code of Copper</h2></strong>
</div>

<div align="center">

  <p align="center">
Code of Copper is a lore heavy, and technically advanced Datapack. Adding a programmable Copper Golem into the game.

Throughout the world, different structures will generate, containing lore, and examples of programs that the Copper Golem can run. Programs can be written into a book, and then given to the Golem, by right clicking it with the book.

Right-clicking the Golem with an empty hand will execute it's current program.

While we recommend playing through the pack, as an addition to your world, and slowly discovering the language and features over time, if you would like a quick demo of the pack, you can use `/place template bot:demo` to place our demo structure.

**A datapack by Moxvallix, Gears and Wulfian. Enjoy!**
    <br />
    <a href="#golemscript-documentation"><strong>Explore the docs »</strong></a>
    <br />
    <a href="https://github.com/GMDU/code-of-copper/issues">Report Bug</a>
  </p>
</div>

---

<br />

## Requirements
- **This datapack will only work in versions 23w03a and higher**
- **Make sure to remember to download and install the resource pack**
- **This datapack will not work without the following datapack libraries:**
  - [Moxlib](https://modrinth.com/datapack/moxlib)
  - [Moxlib Exp](https://modrinth.com/datapack/moxlib-exp)
  - [Regex Lib](https://modrinth.com/datapack/regex)

## Getting Started

First, you will need to find a Copper Golem. These can be found high in the sky, within Airships. Be warned; they can be dangerous!

You can obtain the Copper Golem as an item by left clicking while shifting. It can then be placed wherever you want it to be.
<br />
<br />

## Writing your First Program
It is up to you to discover most of the language through the progression system.

However, every good README needs a hello world.

```ruby
print("Hello, World!")
```
This can be written into a book, and right-clicked into a Copper Golem. right-click again to run.
<br />
<br />

## License

This project is distributed under the GPL-3.0 License. See `LICENSE.md` for more information.
<br />
<br />



## Discord Server
You can join our discord server [here](https://discord.gg/2eR2hdYJMc).
<br />
<br />

## Oxidisation and progression
After a certain number of instruction executions, the golem will begin to oxidise.
Interacting with the golem while holding an axe removes the rust.\
If the golem is fully oxidised, it will not run anymore, but upon scraping it with an axe you will find example programs that explain the language of GolemScript.
This process can be avoided however, by waxing the golem. As with anything copper, you can also scrape off the wax.


## GolemScript Documentation
The following (excellent) language documentation was written by xokz, from the MinecraftCommands discord.

By: xokz (Edited by RevolvingMadness)

Code goes in a book and quill. Code can span multiple pages, but make sure there is a new line after every page!. The name of the book does not matter.
Right click the minecart with the book to set the golems code, and right-click the minecart with a empty hand to execute the code.

## 1. Comments
Comments are indicated with a '#' and last until the end of the line. There are no multi line comments.

EX.
```ruby
# This will not do anything since it is a comment
```

## 2. Variables
A variable can be a signed integer, array, object, boolean, or a string.

You can perform the same operations on variables as most other programming languages, including +, -, *, /, %, **, ||, etc.

GolemScript has order of operations, meaning that 1 + 2 * 3 will return 7, as expected.

EX.
```ruby
let foo = 7
let str = "Hello"
let x = 1
let arr = [9, 2, -3, 6]
let var = ["hello", "world"]
# 'fizz' is now 8
let fizz = foo + x
# 'buzz' is now 'world'
let buzz = var[x]
# 'bar' is now 4
let bar = var[2] + 7
let obj = {a:1,b:2+3}
```

Variables can be changed with the reassignment operator

EX.
```ruby
# 'foo' is now 7
let foo = 7
# 'foo' is now 8 instead of 7
foo = 8
```

You can declare variables with the `const` keyword, to make them constants

EX.
```ruby
const pi = 3 # No floating point numbers :(
print(pi) # prints 3
pi = 4 # Throws an error
```

Variables only exist inside the scope in which they are created, unless the `var` keyword is used, which makes the global

EX.
```ruby
const a = 4

if true # Demonstrating a level of nesting
  const b = 5
  var c = 6
  print(a) # Prints 4, because it is inside the scope where a was declared
end

print(b) # Prints undefined
print(c) # Prints 6
```

Arrays can be added and removed from via addition and subtraction.

EX.
```ruby
let arr = [0, 1, 2]
# 'arr' is now [0, 1, 2]
let arr = arr + 3
# 'arr' is now [0, 1, 2, 3]
let arr = arr - 1
# 'arr' is now [0, 1, 2]
let arr = arr - -1
# 'arr' is now [1, 2]
```

Objects can be added and removed from via addition and subtraction.

EX.
```ruby
let obj = {a:1,b:2,c:3}
# 'obj' is now {a:1,b:2,c:3}
let obj = obj - "a"        
# 'obj' is now {b:2,c:3}
let obj = obj + {c:5,d:4}        
# 'obj' is now {b:2,c:5,d:4}
```

Strings can be added to with addition.

EX.
```ruby
let str = "hello"
print(str)                                               
# This will print 'hello'
let var = str + ", world!"   
print(var)                                              
# This will print 'hello, world!'
```

Strings are just arrays of characters, so they can be indexed just like an array.

EX.
```ruby
let str = "hello, world!"
print(str[1])                                          
# This will print 'e'
```

## 3. Printing
The `print` command outputs text to the chat.
String literals and variables can both be printed, but not on the same line.

EX.
```ruby
let foo = 8
let name = "xokz"
let arr = [0, 4, 7]
let obj = {hello:"world"}

print("Hello, world!")                             
# This will print 'Hello, world!'
print(foo)                                              
# This will print 8  
print(name)                                          
# This will print 'xokz'
print(arr)                                               
# This will print '[0, 4, 7]'
print(arr[1])                                          
# This will print 4
print(arr[1] + foo)                             
# This will print 12
print(obj["hello"])                             
# This will print 'world'
```

## 4. Sleep

The golem can pause code execution for a specified amount of time with the `sleep` command.
The provided value is how many ticks the golem will sleep for.

NOTE: The golem runs at 10 tps, as opposed to minecraft, which runs at 20. Keep that in mind when calculating sleep times.

EX.
```ruby
let time = 7
# Sleep for 7 ticks (0.7 seconds)
sleep(time)
# Sleep for 4 seconds, since 1 second is 10 ticks
sleep(40)
```

## 5. If Statements

If statements allow parts of the code to execute only if a condition is met. 
The if statement will execute if the result is not falsey.

The list of falsey literals is: 
false, 0, an empty string, an empty array, an empty object

EX.
```ruby
let foo = 0
if foo
  print("success!")                                   
  # This will not print since the condition results in 0
end

foo = 5
if foo
  print("success!")                                   
  # This will print because the condition did not result in 0
end

let bar = ""
if bar
  print("success!")                                   
  # This will not print since the condition results in an empty string
end

bar = "i love this datapack"
if bar
  print("success!")                                   
  # This will print since the condition did not result in an empty string
end
```

There are also comparison operators: ==, !=, <, >, <=, and >=.
They represent equal to, not equal to, less than, greater than, less than or equal to, and greater than or equal to respectively.
They can compare variables and/or literals.

EX.
```ruby
let foo = 7
let bar = 5

if foo > bar
  print("success")                                   
  # This will print since foo is greater than bar
end

print(3 < 4) # Prints true

let var = "hello, world"

if var == "goodbye, world"
  print("success")                                   
  # This will not print since var is not "goodbye, world"
end
```

Strings and arrays have lengths, which can be compared against integers.

EX.
```ruby
let str = "hello"
# This will execute because the str of is less than ten
if str < 10
  print("Success!")
end
```

## 6. Loops

There are two kinds of loops - While loops and N loops.

While loops work similarly to if statements, for the condition part.
They execute while a condition is met.

EX.
```ruby
let i = 0
# This will print the numbers 0-19
while i < 20
  print(i)
  i += 1 # This is shorthand for i = i + 1
end

# This will run forever
while 1
  print("wheee!")
end
```

N loops execute a set number of times.

```ruby
# This will execute 10 times
loop 10
  print("Loop")
end
```

## 7. Movement

The golem can move 1 block in any direction (though it is still affected by gravity.)
The array can use variables or literals.

EX.
```ruby
move(1, 0, 1) # The golem moves diagonally

let var = 1
move(0, var, 0)                                  
# The golem will jump up one block
```

## 8. Getblock

The `getblock` command returns the block at a given position, relative to the golem.

NOTE: It can only get blocks up to 5 blocks in each directs, so `getblock(5, 5, 5)` is fine, but `getblock(0, -6, 0)` is not.

EX.
```ruby
let best_block = "minecraft:dirt"

let block = getblock(0, -1, 0)                                
# The block under the golem is a dirt block in this example
print(block)                                        
# This will print 'minecraft:dirt'

# This will execute because the block below is dirt
if block == best_block
  print("Yes, dirt is the best.")
end
```

## 9. Place

The `place` command can place or mine blocks. It takes in a slot index, and a position.
If there is a block in the specified slot, it will attempt to place the block at the given coords.
The slot number is 0 indexed.

NOTE: The index system only counts slots where items are present, so having only one item in the last slot will be counted as slot zero.

EX.
```ruby
# In slot 6, we have put a dirt block.

place(5, [1, 0, 1])
# This will place a dirt block diagonally to the 
# golem, provided there is not already a block there
```

If there is a pickaxe (or other tool) in the slot instead, it will break a block at the given coordinates, and put it in its inventory.
The pickaxe will still lose durability.

EX.
```ruby
# In slot 7, we have an iron pickaxe.

# This will mine the dirt block we placed earlier and take it back into the inventory.
place(6, [1, 0, 1])
```

If there is nothing in the slot, then nothing will happen.

## 10. Inventory

The `INVENTORY` variable is an array with the names of all the items in the golems inventory.
It can be indexed like any other array.

The inventory variable only contains ids of items that are actually there, in the same way as `place`.

EX.
```ruby
# If there is dirt in the first slot, print a message.
if INVENTORY[0] = "minecraft:dirt"
  print("yeah you got the good stuff")
end
```

## 11. Match

Strings can be compared using the `match` command and they use Regular Expressions, So this command is kind of advanced. (See [RegExr](https://regexr.com)).

EX.
```ruby
let regex = /ab?c/
# This prints 'abc'
print(match(regex, "abcdefg"))
```
