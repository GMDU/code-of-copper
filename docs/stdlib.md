# Standard Library

The standard library is the set of builtin functions, avaliable in every GolemScript program.  
They are all coded in native MCFunction, and execute within one game tick. (1/20 of a second)

## [void](data_types.md#undefined) print ( [any](data_types.md) value ) {data-toc-label='Print'}
Outputs `value` to the game chat of anyone within 16 blocks of the golem.

---

## [void](data_types.md#undefined) move ( [int](data_types.md#integer) x, [int](data_types.md#integer) y, [int](data_types.md#integer) z ) {data-toc-label='Move'}
Moves the golem `x` blocks in the x direction, `y` blocks in the y direction, and `z` blocks in the z direction.  
It moves a maximum of one block in each direction per tick.  
If the golem cannot move at all, it skips this function.

---

## [resource](data_types.md#resource) getblock ( [int](data_types.md#integer) x, [int](data_types.md#integer) y, [int](data_types.md#integer) z ) {data-toc-label='Getblock'}
Returns the resource location of the block at `x`, `y`, `z`, relative to the golem.

---

## [void](data_types.md#undefined) place ( [resource](data_types.md#resource) block, [array](data_types.md#array) \[[int](data_types.md#integer) x, [int](data_types.md#integer) y, [int](data_types.md#integer) z\] ) {data-toc-label='Place'}
Places a `block` at `x`, `y`, `z`, relative to the golem.  
If the golem does not have that block, it does nothing.  
If the block at that position is not replaceable, it does nothing.  
If `block` is a tool, it breaks the block at that position and puts the drop into its inventory.

---

## [void](data_types.md#undefined) sleep ( [int](data_types.md#integer) time ) {data-toc-label='Sleep'}
Pauses execution for `time` game ticks. (20 game ticks = 1 second)

---

## [int](data_types.md#integer) len ( [enumerable](data_types.md#enumerable) value ) {data-toc-label='Len'}
Returns the length of `value`.  
For strings, this is the number of characters.  
For arrays, this is the number of elements.  
For objects, this is the number of key-value pairs.  

---

## [int](data_types.md#integer) random ( [int](data_types.md#integer) min, [int](data_types.md#integer) max ) {data-toc-label='Random'}
Returns a random integer between `min` and `max`, inclusive.

---

## [string](data_types.md#string) match ( [regex](data_types.md#regex) pattern, [string](data_types.md#string) target ) {data-toc-label='Match'}
Returns the first substring of `string` to match `pattern`.  
If `pattern` does not match `string`, it returns an empty string.

---

## [string](data_types.md#string) typeof ( [any](data_types.md) value ) {data-toc-label='Typeof'}
Returns the name of the data type of `value`.
Example:
```rb
typeof(1) # integer
typeof(/hi/) # regex
typeof(true) # boolean
```

---

## [enumerable](data_types.md#enumerable) delete ( [enumerable](data_types.md#enumerable) target, [int](data_types.md#integer) | [string](data_types.md#string) index ) {data-toc-label='Delete'}
Returns a copy of `target` with the value at `target[index]` deleted from it.  
For arrays, this is the nth value, where n is `index`.  
For object, this is the value with a key of `index`.

---

## [object](data_types.md#object) { x: [int](data_types.md#integer), y: [int](data_types.md#integer), z: [int](data_types.md#integer) } pos () {data-toc-label='Pos'}
Returns the `x`, `y` and `z` coordinates of the golem.

---

## [array](data_types.md#array) \[ [resource](data_types.md#resource) \] inventory () {data-toc-label='Inventory'}
Returns an array of resources, the namespaced IDs of every item in the golem's inventory.

---

## [int](data_types.md#integer) time () {data-toc-label='Time'}
Returns the current game time, in ticks. Equivalent to mcfunction: `/time query gametime`

---

## [int](data_types.md#integer) abs ( [int](data_types#integer) value ) {data-toc-label='Abs'}
Returns the absolute value of `value`.  
If `value` is positive, return `value`.  
If `value` is negative, return `-value`.  

---

## [int](data_types.md#integer) sign ( [int](data_types.md#integer) value ) {data-toc-label='Sign'}
Returns the sign of `value`.  
If `value` is positive, return `1`.  
If `value` is negative, return `-1`.  
If `value` is zero, return `0`.  

---

## [int](data_types.md#integer) min ( [int](data_types.md#integer) a, [int](data_types.md#integer) b ) {data-toc-label='Min'}
If `b` is less than `a`, return `b`. Otherwise, return `a`.  
  
---

## [int](data_types.md#integer) max ( [int](data_types.md#integer) a, [int](data_types.md#integer) b ) {data-toc-label='Min'}
If `b` is greater than `a`, return `b`. Otherwise, return `a`.  

---

## [int](data_types.md#integer) int ( [any](data_types.md) value ) {data-toc-label='Int'}
Converts `value` into an integer.  
If it fails, it returns zero.  
If `value` is not a type that is convertable into an intger, it throws an error.    
