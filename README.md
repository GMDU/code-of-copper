<div align="center">
  <a href="https://github.com/GMDU/code-of-copper">
    <img src="logo.png" alt="Logo" width="128" height="128">
  </a>

<strong><h2 align="center">Code of Copper</h2></strong>
</div>

<div align="center">

  <p align="center">
Code of Copper is a lore heavy, and technically advanced Datapack. Adding a programmable Copper Golem into the game.

Throughout the world, different structures will generate, containing lore, and examples of programs that the Copper Golem can run. Programs can be written into a book, and then given to the Golem, by right clicking it with the book.

Right-clicking the Golem with a empty hand will execute it's current program.

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
- **This datapack will not work in versions below 23w03a**
- **Make sure to remember to download and install the resource pack**
- **This datapack will not work without the following datapacks:**
  - [Moxlib](https://modrinth.com/datapack/moxlib)
  - [Moxlib Exp](https://modrinth.com/datapack/moxlib-exp)
  - [Regex Lib](https://modrinth.com/datapack/regex)

## Getting Started

First, you will need to find a Copper Golem. These can be found high in the sky, within Airships. Be warned; they can be dangerous!

You can obtain the Copper Golem as an item by left clicking while shifting. It can then be placed wherever you want it to be.
<br />
<br />

## Writing your First Program
It is up to you to discover most of the language through exploration; example programs are found scattered across the world.

However, every good README needs a hello world.

```ruby
print "Hello, World!"
```
This can be written into a book, and right-clicked into a Copper Golem. right-click again to run.
<br />
<br />

## License

This project is distributed under the GPL-3.0 License. See `LICENSE.md` for more information.
<br />
<br />



## Discord Server
You can join our discord server here: https://discord.gg/2eR2hdYJMc
<br />
<br />


## GolemScript Documentation
The following (excellent) language documentation was written by xokz, from the MinecraftCommands discord.

By: xokz

Code goes in a book and quill. Code can span multiple pages. The name of the book does not matter.
Right click the minecart with the book to set the golems code, and shift-click the minecart to execute the code.

## 1. Comments
Comments are indicated with a '#' and last until the end of the line. There are no multi line comments.

EX.
```ruby
# this will not do anything since it is a comment
```

## 2. Variables
A variable can be an signed integer, array, or a string.

Variables can use the +, -, *, /, and % operators.

Only one operator is supported per line, so no "let x = a / b + c"

If a variable's name contains characters other than letters, numbers or underscores,
then it must be referenced within parentheses.

EX.
```ruby
let foo = 7
let str = "Hello"
let x = 1
let arr = [9, 2, -3, 6]
let var = ["hello", "world"]
let fizz = foo + x                           # this will be 8
let buzz = var[x]				# this will be 'world'
let bar = var[2] + 7                         # this will be 4
let obj = {a:1,b:2+3}
```

Variables can be changed by simply redeclaring them.

EX.
```ruby
let foo = 7
let foo = 8                                           # foo is now 8 instead of 7
```

Arrays can be added and removed from via addition and subtraction.

EX.
```ruby
let arr = [0, 1, 2]
let arr = arr + 3				# arr is now [0,1,2,3]
let arr = arr - 1				# arr is now [0,1,2]
let arr = arr - -1				# arr is now [1,2]
```

Objects can be added and removed from via addition and subtraction.

EX.
```ruby
let obj = {a:1,b:2,c:3}
let obj = obj - "a"				# obj is now {b:2,c:3}
let obj = obj + {c:5,d:4}				# obj is now {b:2,c:5,d:4}
```

Strings can be added to with addition.

EX.
```ruby
let str = "hello"
print str                                               # this will print 'hello'
let var = str + ", world!"   
print var                                              # this will print 'hello, world!'
```

Strings are just arrays of characters, so they can be indexed just like an array.

EX.
```ruby
let str = "hello, world!"
print str[1]                                          # this will print 'e'
```

## 3. Printing
The `print` command outputs text to the chat.
String literals and variables can both be printed, but not on the same line.

EX.
```ruby
let foo = 8
let bar = "xokz"
let arr = [0, 4, 7]
let obj = {hello:"world"}

print "Hello, world!"                             # this will print 'Hello, world!'
print foo                                              # this will print 8	
print name                                          # this will print 'xokz'
print arr                                               # this will print '[0, 4, 7]'
print arr[1]                                          # this will print 4
print arr[1] + foo                             # this will print 12
print obj["hello"]                             # this will print 'world'
```

## 4. Sleep

The golem can pause code execution for a specified amount of time with the `sleep` command.
The provided value is how many ticks the golem will sleep for.

EX.
```ruby
let time = 7
sleep time                                           # sleep for 7 ticks
sleep 40                                                # sleep for 2 seconds, since 1 second is 20 ticks
```

## 5. If Statements

If statements allow parts of the code to execute only if a condition is met. 
The if statement will execute if the result is not 0 or and empty string.

EX.
```ruby
let foo = 0
if foo
	print "success!"                                   # this will not print since the condition results in 0
end

let foo = 5
if foo
	print "success!"                                   # this will succeed because the condition did not result in 0
end

let bar = ""
if bar
	print "success!"                                   # this will not print since the condition results in an empty string
end

let bar = "i love this datapack"
if bar
	print "success!"                                   # this will print since the condition did not result in an empty string
end
```

There are also operators: =, <, and >. 
They represent equal to, less than, and greater than, respectively.
They can compare variables and/or literals.

EX.
```ruby
let foo = 7
let bar = 5

if foo > bar
	print "success"                                   # this will print since foo is greater than bar
end

let var = "hello, world"

if var = "goodbye, world"
	print "success"                                   # this will not print since var is not "goodbye, world"
end
```

Strings and arrays have lengths, which can be compared against integers.

EX.
```ruby
let str = "hello"
if str < 10
	print "The length of the string is less than 10!"
end
```

## 6. Loops

Loops work similarly to if statements, for the condition part.
They execute while a condition is met.

EX.
```ruby
# this will print the numbers 0-19
let i = 0
loop i
	print i
end


# this will go on forever
while 1
	print "wheee!"
end
```

## 7. Movement

The golem can move 1 block in any direction (though it is still affected by gravity.)
The array can use variables or literals.

EX.
```ruby
let var = 1
move [0, var, 0]                                  # the golem will jump up one block
```

## 8. Getblock

The `getblock` command stores the name of the block at the given position in the `BLOCK` variable.

EX.
```ruby
let best_block = "minecraft:dirt"

getblock [0, -1, 0]                                # the block under the golem is a dirt block in this example
print BLOCK                                        # will print 'minecraft:dirt'

if BLOCK = best_block
	print "Yes, dirt is the best." 	# this will print because the block below is dirt
end
```

## 9. Place

The `place` command can place or mine blocks. It takes in a slot index, and a position.
If there is a block in the specified slot, it will attempt to place the block at the given coords.
The slot number is 0 indexed.

EX.
```ruby
# in slot 6, we have put a dirt block.

place 5, [1,0,1]
# this will place a dirt block diagonally to the 
# golem, provided there is not already a block there
```

If there is a pickaxe in the slot instead, it will break a block at the given coordinates, and put it in its inventory.
The pickaxe will still lose durability.

EX.
```ruby
# in slot 7, we have an iron pickaxe.

place 6, [1,0,1] # this will mine the dirt block we placed earlier and take it back into the inventory.
```

If there is nothing in the slot, then nothing will happen.

## 10. Inventory

The `INVENTORY` variable is an array with the names of all the items in the golems inventory.
It can be indexed like any other array.

EX.
```ruby
# if there is dirt in the first slot, print a message.
if INVENTORY[0] = "minecraft:dirt"
	print "yeah you got the good stuff"
end
```

## 11. Match

Strings can be compared using the `match` command and they use Regular Expressions, So this command is kind of advanced. (See [RegExr](https://regexr.com)).

The matched sub-string will return to `MATCH`.

EX.
```ruby
let regex = /ab?c/
match regex, "abcdefg"
print MATCH         # prints "abc"
```