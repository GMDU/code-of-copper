# Standard Library

The standard library is the set of builtin functions, avaliable in every GolemScript program.  
They are all coded in native MCFunction, and execute within one game tick. (1/20 of a second)

## [void](/data_types#undefined) print ( [any](/data_types) value ) {data-toc-label='Print'}
Outputs `value` to the game chat of anyone within 16 blocks of the golem.

---

## [void](/data_types#undefined) move ( [int](/data_types#integer) x, [int](/data_types#integer) y, [int](/data_types#integer) z ) {data-toc-label='Move'}
Moves the golem `x` blocks in the x direction, `y` blocks in the y direction, and `z` blocks in the z direction.  
It moves a maximum of one block in each direction per tick.  
If the golem cannot move at all, it skips this function.

---

## [resource](/data_types#resource) getblock ( [int](/data_types#integer) x, [int](/data_types#integer) y, [int](/data_types#integer) z ) {data-toc-label='Getblock'}
Returns the resource location of the block at `x`, `y`, `z`, relative to the golem.

---

## [void](/data_types#undefined) place ( [resource](/data_types#resource) block, [array](/data_types#array) \[[int](/data_types#integer) x, [int](/data_types#integer) y, [int](/data_types#integer) z\] ) {data-toc-label='Place'}
Places a `block` at `x`, `y`, `z`, relative to the golem.  
If the golem does not have that block, it does nothing.  
If the block at that position is not replaceable, it does nothing.  
If `block` is a tool, it breaks the block at that position and puts the drop into its inventory.

---

## [void](/data_types#undefined) sleep ( [int](/data_types#integer) time ) {data-toc-label='Sleep'}
Pauses execution for `time` game ticks. (20 game ticks = 1 second)

---

## [int](/data_types#integer) random ( [int](/data_types#integer) min, [int](/data_types#integer) max ) {data-toc-label='Random'}
Returns a random integer between `min` and `max`, inclusive.

---

## [string](/data_types#string) match ( [regex](/data_types#regex) pattern, [string](/data_types#string) target ) {data-toc-label='Match'}
Returns the first substring of `string` to match `pattern`.  
If `pattern` does not match `string`, it returns an empty string.
