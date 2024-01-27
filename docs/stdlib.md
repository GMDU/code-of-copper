# Standard Library

Code of Copper supports all builtin functions defined in the [GolemScript standard library](https://datapack.dev/docs/golemscript/stdlib){target=_blank}.  
It also defines some of its own, which are specific to Code of Copper.  

### [void](https://datapack.dev/docs/golemscript/data_types.md#undefined) print ( [any](https://datapack.dev/docs/golemscript/data_types.md) value ) {data-toc-label='Print'}
Print is defined by the [GolemScript standard library](https://datapack.dev/docs/golemscript/stdlib/misc#print){target=_blank}, but Code of Copper extends this behaviour by printing all outputs of this function in the chat, to anyone within 16 blocks of the Golem.

---

### [void](https://datapack.dev/docs/golemscript/data_types.md#undefined) move ( [int](https://datapack.dev/docs/golemscript/data_types.md#integer) x, [int](https://datapack.dev/docs/golemscript/data_types.md#integer) y, [int](https://datapack.dev/docs/golemscript/data_types.md#integer) z ) {data-toc-label='Move'}
Moves the golem `x` blocks in the x direction, `y` blocks in the y direction, and `z` blocks in the z direction.  
It moves a maximum of one block in each direction per tick.  
If the golem cannot move at all, it skips this function.

---

### [resource](https://datapack.dev/docs/golemscript/data_types.md#resource) getblock ( [int](https://datapack.dev/docs/golemscript/data_types.md#integer) x, [int](https://datapack.dev/docs/golemscript/data_types.md#integer) y, [int](https://datapack.dev/docs/golemscript/data_types.md#integer) z ) {data-toc-label='Getblock'}
Returns the resource location of the block at `x`, `y`, `z`, relative to the golem.

---

### [void](https://datapack.dev/docs/golemscript/data_types.md#undefined) place ( [resource](https://datapack.dev/docs/golemscript/data_types.md#resource) block, [array](https://datapack.dev/docs/golemscript/data_types.md#array) \[[int](https://datapack.dev/docs/golemscript/data_types.md#integer) x, [int](https://datapack.dev/docs/golemscript/data_types.md#integer) y, [int](https://datapack.dev/docs/golemscript/data_types.md#integer) z\] ) {data-toc-label='Place'}
Places a `block` at `x`, `y`, `z`, relative to the golem.  
If the golem does not have that block, it does nothing.  
If the block at that position is not replaceable, it does nothing.  
If `block` is a tool, it breaks the block at that position and puts the drop into its inventory.

---

### [object](https://datapack.dev/docs/golemscript/data_types.md#object) { x: [int](https://datapack.dev/docs/golemscript/data_types.md#integer), y: [int](https://datapack.dev/docs/golemscript/data_types.md#integer), z: [int](https://datapack.dev/docs/golemscript/data_types.md#integer) } pos () {data-toc-label='Pos'}
Returns the `x`, `y` and `z` coordinates of the golem.

---

### [array](https://datapack.dev/docs/golemscript/data_types.md#array) \[ [resource](https://datapack.dev/docs/golemscript/data_types.md#resource) \] inventory () {data-toc-label='Inventory'}
Returns an array of resources, the namespaced IDs of every item in the golem's inventory.
