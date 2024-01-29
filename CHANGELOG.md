# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [0.3.1] - 2024-01-29
The big split

### Added
- The background of the text above the golem is now coloured based on its oxidisation level

### Changed
- The GolemScript language has been split from this datapack
  - It is now its own separate pack
  - This datapack uses its API to run programs and control the golems
- Empty and same programs now rerun the previous program
- Broken golems now store their oxidisation level, and whether they had been waxed

### Removed
- All code that processes the GolemScript language
  - This can now all be found in the [GolemScript datapack](https://modrinth.com/datapack/golemscript)
  - Code of Copper is now a runtime for GolemScript, and only contains code for manipulating golems
- The experimental API
  - This is now part of the GolemScript API

## [0.3.0-alpha-1] - 2023-12-24
### Added
- Experimental, unstable support for extensions.
  - This should only impact datapack developers wishing to add their own functions.
  - No other changes made so far.

## [0.3.0] - 2023-11-26
Overhauled the entire language.

### Added
- Custom Functions
  - Function definitions
  - Function calls
  - return keyword
- Stdlib Functions
  - random: to genereate random numbers
  - time: to get the current gametime
- Var keyword for global variables
- Assignment operators such as += and -=
- Booleans
- Constants
- Resource literal
- << and >> operators
- Objects can be indexed with dot (.) notation
- Other miscellaneous operators

### Changed
- Rewrote all documentation
  - Now contains every language feature
  - Better documented and easier to understand
  - Available [here](https://datapack.dev/docs/code_of_copper)
- Many instructions are now built in functions
  - You can now use functions such as getblock inside expressions
- $INVENTORY and $POS are now functions: inventory() and pos()
- pos() now returns an object, instead of an array
- inventory() now returns a array of resources, rather than strings
- Variables only exist within the scope that they are created
- Predicates updated to use 1.20 format
- The entire interpreter was re-written from the ground up
  - It should now be far more reliable going forwards
- Place now takes a resource rather than a slot number
- Minus operator no longer removes items from objects/arrays

### Fixed
- Regex matcher is now correctly passed a string's value
- Backslashes, unless escaping `/`, no longer need to be escaped themselves.

## [0.3.0-beta-2] - 2023-05-25
We rewrote the entire interpreter.

### Added
- Resource literal
- Added << and >> operators
- Objects can be indexed with dot (.) notation

### Changed
- Predicates updated to use 1.20 format
- The entire interpreter was re-written from the ground up
  - It should now be far more reliable going forwards
- Place now takes a resource rather than a slot number
- Minus operator no longer removes items from objects/arrays

### Fixed
- Custom functions now can be called from expressions.

## [0.3.0-beta-1] - 2023-05-25
Fix all the stupid bugs of 0.3.0-alpha-1

### Added
- Constants

### Fixed
- Prevent running bots with compile errors
- Bot no longer loses error messages when recompiling programs
- Return not exiting functions
- Functions can be called within expressions
- Functions called within functions return values properly
- Random function is now actually random
- Functions can be defined and called with no arguments/parameters

## [0.3.0-alpha-1] - 2023-03-23
Functions

### Added
- Functions
  - Function definitions
  - Function calls
  - return keyword
- Var keyword for global variables
- Assignment operators such as += and -=
- Booleans

### Changed
- Many instructions are now built in functions
- Variables only exist within the scope that they are created

## [0.2.3] - 2023-02-03
Lots of unit tests and fixed bugs after the interpreter refactor

### Fixed
- Regex matcher is now correctly passed a string's value
- Backslashes, unless escaping `/`, no longer need to be escaped themselves.
- $INVENTORY and $POS variables now parse correctly again

### Added
- Array indexing with negtive numbers, starting from the end of the list
- Unit tests for literal and expression evaluation
- Integration test module for testing instructions
  - This can be placed by running `/function bot:spec/place`

## [0.2.2] - 2023-02-27
Pipelines and progression

## Added
- Oxidisation Based Progression
  - Golems will oxidise over time whilst executing programs
    - This can be prevented by waxing a Golem with honeycomb
    - Wax, and oxidisation, can be scraped off a Golem with an axe
    - When scraping rust off a fully oxidised golem, the player is rewarded with the next example program

### Changed
- Refactor of the interpreter
  - Golems now uses a pipeline, saving on lag
  - Golems now execute instructions at 10Hz
- Modified loot tables to work with new progression system

## [0.2.1] - 2022-02-24
Escaping, interaction improvements, position variable, and break instruction.

### Added
- `$POS` variable
- `break` instruction
- `\` as escape for strings and regexes
  - Escaped `"` are replaced by `”` as to not break tellraw

### Changed
- README has now been greatly improved
- Golem now uses item and text display entities
- Golem model and texture revamp
- New interaction system:
  - Right click to run a Golem, or with a book to assign a program.
  - Left click to stop a Golem
  - Crouching whilst looking at the Golem allows it's inventory to be
  accessed, or for it to be broken.

### Fixed
- Containers not dropping their contents when broken by a golem
- Items not dropping when the golem's inventory is full

## [0.2.0] - 2023-02-21
Two new literal types, and cleanup of syntax.

### Added
- Object variant of literal
- Alphanumeric pseudo-variant of literal
  - Only allows [A-Za-z0-9_]
  - First character must match [A-Za-z]
- Regex variant of literal
  - String-regex matching using the `match` function

### Changed
- Let now takes an alphanumeric literal in the name field, rather than a string.
- Variables no longer need a "$" in front of the name

### Fixed
- Fixed blocks not dropping while the golem was running the break command
- Tools can no longer go below zero durability

## [0.1.4] - 2023-02-07
Refactor of the parser, fixing many compiler bugs.

### Changed
- Major refactor of the parser:
  - Variables within arrays no longer need brackets if they use only alphanumeric characters.
  - Operators no longer need a space between them and literals.
  - Lots of behind-the-scenes improvements which will allow for later enhancements.
- Most instructions will allow expressions as their parameters.
- Golems now don't print quotes when printing plain strings.

### Fixed
- Golems no longer fall through non-full blocks.
- Golems now reset their variables when the program reruns.
- Items no longer disappear weirdly when placing from the second slot.

## [0.1.3] - 2023-02-02
Various bug fixes, and a new language feature.

### Added
- Literal parameters, eg. `$(array)[0]`.
- A dev mode, where you can see what's happening behind the scenes (not fully implemented).
- New example programs to demonstrate parameters and the now useful INVENTORY variable

### Changed
- Range for place and getblock commands is now 5.

### Fixed
- Arrays no longer close the literal early.
- Golem's display armor stand now has locked slots to prevent interaction.
- Golem can no longer break bedrock and other unbreakable blocks.
- Golem no longer breaks the block underneath the one it's supposed to.
- Golem can no longer float in the air by constantly calling the move command.
- Multiple golems can place blocks in the same tick

## [0.1.2] - 2023-01-31
Various bug fixes, and small additions.

### Added
- String addition example program.

### Fixed
- Print function will now correctly show more complex data structures.
- If statements no longer remove the following instruction.

## [0.1.1] - 2023-01-31
Various bug fixes.

### Fixed
- If statements no longer terminate a while loop.
- Print command now works from within a while loop.
- Blocks now correctly change when placed.

## [0.1.0] - 2023-01-29
Initial release!

### Added
- Copper Golems.
- GolemScript Language Parser.
- GolemScript Language Interpreter.
- Skyship, Bunker, Laboratory and Gears structures.
