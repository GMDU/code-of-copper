# Operators

Each operator has a precedence value. When an operator is part of an expression, it will bind more tightly to its operands the higher its precedence value.
```ruby title="Example"
# Since "*" has higher precedence than "+",
# it will bind more tightly to 2 and 3,
# so this expression is evaluated (1 + (2 * 3))
1 + 2 * 3
```

## Precedence 8

### Power (`**`) {data-toc-label='Power'}

[int](data_types.md#integer) ** [int](data_types.md#integer)  
Returns `left` to the power of `right`.  
Note: Power is [left associative](https://en.wikipedia.org/wiki/Operator_associativity){target=_blank}.

---

## Precedence 7

### Multiply (`*`) {data-toc-label='Multiply'}

[int](data_types.md#integer) * [int](data_types.md#integer)  
Returns `left` multiplied by `right`.

### Divide (`/`) {data-toc-label='Divide'}

[int](data_types.md#integer) / [int](data_types.md#integer)  
Returns `left` divided by `right`.

### Modulo (`%`) {data-toc-label='Modulo'}

[int](data_types.md#integer) % [int](data_types.md#integer)  
Returns the remainder of dividing `left` by `right`.

---

## Precedence 6

### Add (`+`) {data-toc-label='Add'}
[int](data_types.md#integer) + [int](data_types.md#integer)  
Returns `left` plus `right`.

[string](data_types.md#string) + [string](data_types.md#string)  
Returns the [concatenated](https://en.wikipedia.org/wiki/Concatenation){target=_blank} string, `left` followed by `right`.

[array](data_types.md#array) + [array](data_types.md#array)  
Returns the merged array containing all of `left`'s values followed by all of `right`'s values.

[object](data_types.md#object) + [object](data_types.md#object)  
Returns `left` merged with `right`, with duplicate keys taking the value from `right`.

### Subtract (`-`) {data-toc-label='Subtract'}
[int](data_types.md#integer) - [int](data_types.md#integer)  
Returns `left` minus `right`.

---

## Precedence 5

### Left shift (`<<`) {data-toc-label='Left shift'}

[int](data_types.md#integer) << [int](data_types.md#integer)  
Returns `left`, with all the bits in it shifted left, `right` amount of times.  
Equivalent to `left * (2 ** right)`.
See [wikipedia](https://en.wikipedia.org/wiki/Logical_left_shift){target=_blank} for more details.

[array](data_types.md#array) << [any](data_types.md)  
Returns `left` with `right` appended to it.  
If `left` is a variable, it mutates it.


### Right shift (`>>`) {data-toc-label='Right shift'}

[int](data_types.md#integer) >> [int](data_types.md#integer)  
Returns `left`, with all the bits in it shifted right, `right` amount of times.  
Equivalent to `left / (2 ** right)`.
See [wikipedia](https://en.wikipedia.org/wiki/Logical_right_shift){target=_blank} for more details.

[any](data_types.md) >> [array](data_types.md#array)  
Returns `right` with `left` prepended to it.  
If `right` is a variable, it mutates it.

---

## Precedence 4

### Less than (`<`) {data-toc-label='Less than'}

[sizeable](#fn:1)[^1] < [sizeable](#fn:1)[^1]  
Returns a boolean value, whether size[^2] of `left` is less than size[^2] of `right`.

### Greater than (`>`) {data-toc-label='Greater than'}

[sizeable](#fn:1)[^1] > [sizeable](#fn:1)[^1]  
Returns a boolean value, whether size[^2] of `left` is greater than size[^2] of `right`.

### Less than or equal (`<=`) {data-toc-label='Less than or equal'}

[sizeable](#fn:1)[^1] < [sizeable](#fn:1)[^1]  
Returns a boolean value, whether size[^2] of `left` is less than or equal to size[^2] of `right`.

### Greater than or equal (`>=`) {data-toc-label='Greater than or equal'}

[sizeable](#fn:1)[^1] > [sizeable](#fn:1)[^1]  
Returns a boolean value, whether size[^2] of `left` is greater than or equal to size[^2] of `right`.

---

## Precedence 3

### Equal (`==`) {data-toc-label='Equal'}

[any](data_types.md) == [any](data_types.md)  
Returns a boolean value, whether `left` is equal to `right`.

### Not equal (`!=`) {data-toc-label='Not equal'}

[any](data_types.md) != [any](data_types.md)  
Returns a boolean value, whether `left` is not equal to `right`.

---

## Precedence 2

### Logical and (`&&`/`and`) {data-toc-label='Logical and'}

[any](data_types.md) && [any](data_types.md)  
If `left` is truthy[^3], return `right`. Otherwise, return `left`.

### Logical or (`||`/`or`) {data-toc-label='Logical or'}

[any](data_types.md) || [any](data_types.md)  
If `left` is truthy[^3], return `left`. Otherwise, return `right`.

---

## Precedence 1

### Assign (`=`) {data-toc-label='Assign'}

[variable](keywords.md#let) = [any](data_types.md)  
Sets the value of `left` to `right`.

### Operator assignments (`+=`/`-=`/`*=`/`/=`/`%=`) {data-toc-label='Operator assignments'}

[variable](keywords.md#let) <operator\>= [any](data_types.md)  
Sets the value of `left` to the result of <operator\> evaluated on `left` and `right`.
```ruby title="Example"
x = 1
x += 2 # x == x + 2 == 3
```


[^1]: Any type which has a well defined size[^2].
[^2]:
The size of an integer is its value  
The size of a string is its length  
The size of an array is its length  
The size of an object is the number of keys
[^3]:
A value is truthy if its size[^2] is not zero.  
A resource is always truthy. Undefined is always falsey.
