# Standard Library

The standard library is the set of builtin functions, avaliable in every GolemScript program.  
They are all coded in native MCFunction, and execute within one game tick. (1/20 of a second)

### [void](data_types.md#undefined) print ( [any](data_types.md) value ) {data-toc-label='Print'}
Outputs `value` to the game chat of anyone within 16 blocks of the golem.

---

### [void](data_types.md#undefined) move ( [int](data_types.md#integer) x, [int](data_types.md#integer) y, [int](data_types.md#integer) z ) {data-toc-label='Move'}
Moves the golem `x` blocks in the x direction, `y` blocks in the y direction, and `z` blocks in the z direction.  
It moves a maximum of one block in each direction per tick.  
If the golem cannot move at all, it skips this function.

---

### [resource](data_types.md#resource) getblock ( [int](data_types.md#integer) x, [int](data_types.md#integer) y, [int](data_types.md#integer) z ) {data-toc-label='Getblock'}
Returns the resource location of the block at `x`, `y`, `z`, relative to the golem.

---

### [void](data_types.md#undefined) place ( [resource](data_types.md#resource) block, [array](data_types.md#array) \[[int](data_types.md#integer) x, [int](data_types.md#integer) y, [int](data_types.md#integer) z\] ) {data-toc-label='Place'}
Places a `block` at `x`, `y`, `z`, relative to the golem.  
If the golem does not have that block, it does nothing.  
If the block at that position is not replaceable, it does nothing.  
If `block` is a tool, it breaks the block at that position and puts the drop into its inventory.

---

### [void](data_types.md#undefined) sleep ( [int](data_types.md#integer) time ) {data-toc-label='Sleep'}
Pauses execution for `time` game ticks. (20 game ticks = 1 second)

---

### [int](data_types.md#integer) len ( [enumerable](data_types.md#enumerable) value ) {data-toc-label='Len'}
Returns the length of `value`.  
For strings, this is the number of characters.  
For arrays, this is the number of elements.  
For objects, this is the number of key-value pairs.  

---

### [int](data_types.md#integer) random ( [int](data_types.md#integer) min, [int](data_types.md#integer) max ) {data-toc-label='Random'}
Returns a random integer between `min` and `max`, inclusive.

---

### [string](data_types.md#string) match ( [regex](data_types.md#regex) pattern, [string](data_types.md#string) target ) {data-toc-label='Match'}
Returns the first substring of `string` to match `pattern`.  
If `pattern` does not match `string`, it returns an empty string.

---

### [string](data_types.md#string) typeof ( [any](data_types.md) value ) {data-toc-label='Typeof'}
Returns the name of the data type of `value`.
Example:
```rb
typeof(1) # integer
typeof(/hi/) # regex
typeof(true) # boolean
```

---

### [enumerable](data_types.md#enumerable) delete ( [enumerable](data_types.md#enumerable) target, [int](data_types.md#integer) | [string](data_types.md#string) index ) {data-toc-label='Delete'}
Returns a copy of `target` with the value at `target[index]` deleted from it.  
For arrays and strings, this is the nth value, where n is `index`.  
For object, this is the value with a key of `index`.  

---

### [enumerable](data_types.md#enumerable) set ( [enumerable](data_types.md#enumerable) target, [int](data_types.md#integer) | [string](data_types.md#string) index, [any](data_types) value ) {data-toc-label='Set'}
Returns a copy of `target` with the value at `target[index]` set to `value`.  
For arrays and strings, this is the nth value, where n is `index`.  
For object, this is the value with a key of `index`.  

---

### [object](data_types.md#object) { x: [int](data_types.md#integer), y: [int](data_types.md#integer), z: [int](data_types.md#integer) } pos () {data-toc-label='Pos'}
Returns the `x`, `y` and `z` coordinates of the golem.

---

### [array](data_types.md#array) \[ [resource](data_types.md#resource) \] inventory () {data-toc-label='Inventory'}
Returns an array of resources, the namespaced IDs of every item in the golem's inventory.

---

### [int](data_types.md#integer) time () {data-toc-label='Time'}
Returns the current game time, in ticks. Equivalent to mcfunction: `/time query gametime`

---

### [int](data_types.md#integer) abs ( [int](data_types#integer) value ) {data-toc-label='Abs'}
Returns the absolute value of `value`.  
If `value` is positive, return `value`.  
If `value` is negative, return `-value`.  

---

### [int](data_types.md#integer) sign ( [int](data_types.md#integer) value ) {data-toc-label='Sign'}
Returns the sign of `value`.  
If `value` is positive, return `1`.  
If `value` is negative, return `-1`.  
If `value` is zero, return `0`.  

---

### [int](data_types.md#integer) min ( [int](data_types.md#integer) a, [int](data_types.md#integer) b ) {data-toc-label='Min'}
If `b` is less than `a`, return `b`. Otherwise, return `a`.  
  
---

### [int](data_types.md#integer) max ( [int](data_types.md#integer) a, [int](data_types.md#integer) b ) {data-toc-label='Min'}
If `b` is greater than `a`, return `b`. Otherwise, return `a`.  

---

### [int](data_types.md#integer) int ( [any](data_types.md) value ) {data-toc-label='Int'}
Converts `value` into an integer.  
If it fails, it returns zero.  
If `value` is not a type that is convertable into an intger, it throws an error.    

---

### [int](data_types.md#integer) index ( [array](data_types.md#array) array, [any](data_types.md) element ) {data-toc-label='Index'}
Returns the index of the first occurence of `element` in `array`.  
If `array` does not contain `element`, it returns `-1`.

---

### [bool](data_types.md#boolean) contains? ( [array](data_types.md#array) array, [any](data_types.md) element ) {data-toc-label='Contains'}
Returns whether `array` contains `element`.

---

### [bool](data_types.md#boolean) any ( [array](data_types.md#array) array, [proc](data_types.md#proc) predicate ) {data-toc-label='Any'}
Returns whether `predicate`, when called on all elements of `array` separately, returns a [truthy](glossary.md#truthiness) value at least once.

---

### [bool](data_types.md#boolean) every ( [array](data_types.md#array) array, [proc](data_types.md#proc) predicate ) {data-toc-label='Every'}
Returns whether `predicate`, when called on all elements of `array` separately, returns a [truthy](glossary.md#truthiness) value every time.

---

### [string](data_types.md#string) str ( [any](data_types.md) target ) {data-toc-label='Str'}  
Returns a string representation of `target`, formatted the same way as [print](#void-print-any-value).

---

### [string](data_types.md#string) join ( [array](data_types.md#array) target, [string](data_types.md#string) separator = "" ) {data-toc-label='Join'}  
Runs [str](#string-str-any-target) on each element of `target`, separating each element by `separator`, and combines all to a single string.  

---

### [string | array](data_types.md) reverse ( [string | array](data_types.md) target ) {data-toc-label='Reverse'}  
Returns a new string or array, where all elements are in reverse order to `target`.

---

### [string | array](data_types.md) slice ( [string | array](data_types.md) target, [int](data_types.md#integer) offset, [int](data_types.md#integer) count) {data-toc-label='Slice'}  
Returns `count` amount of elements, starting from position `offset`.  
If `count` is not specified, it returns all objects starting from position `offset`.

---

### [array](data_types.md#array) flat ( [array](data_types.md#array) target, [int](data_types.md#integer) depth = 1 ) {data-toc-label='Flat'}  
Recursively collapses child array elements in `target` in to the output, to a depth of `depth`.  

---

### [array](data_types.md#array) map ( [enumerable](data_types.md#enumerable) target, [proc](data_types.md#proc) proc ) {data-toc-label='Map'}  
Calls `proc` for each given element in `target`.  
If `target` is a string or an array, `proc` is called with the current element as `arg 0`.  
If `target` is an object, `proc` is called with the current element's key as `arg 0`,  and value as `arg 1`.  

---

### [array](data_types.md#array) sort ( [array](data_types.md#array) target, [proc](data_types.md#proc) proc ) {data-toc-label='Sort'}  
Sorts the elements of `target`, based on the return value of `proc`, given the compare value as `arg 0`, and the pivot as `arg 1`.

The proc should return a negative or zero number if `arg 0` is to follow `arg 1`, or a positive number if `arg 1` is to follow `arg 0`.

This can easily be accomplished with the [<=>](operators.md#three-way-comparison) operator.

If `proc` is unset, sort will default to sorting by value in ascending order.

---

### [object](data_types.md#object) obj ( [array](data_types.md#array) target ) {data-toc-label='Obj'}  
Returns an object with key-value pairs drawn from child arrays in `target`.

Eg. `[['a', 1], ['b', 2]]` returns as `{a: 1, b: 2}`.