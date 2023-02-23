# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [0.2.1] - 2022-02-24
Escaping, interaction improvements, position variable, and break instruction.

### Added
- `$POS` variable
- `break` instruction
- `\` as escape for strings and regexes
  - Escaped `"` are replaced by `”` as to not break tellraw

### Changed
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

## [0.1.0] - 2023-01-30
Initial release!

### Added
- Copper Golems.
- GolemScript Language Parser.
- GolemScript Language Interpreter.
- Skyship, Bunker, Laboratory and Gears structures.
