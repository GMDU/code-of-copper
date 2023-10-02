data modify storage bot:interpreter evaluate.stack[-1].b set from storage bot:interpreter evaluate.result

data modify storage bot:interpreter evaluate.operation.current set from storage bot:interpreter evaluate.stack[-1].op.variant
execute store result score .a bot.interpreter run data get storage bot:interpreter evaluate.stack[-1].a.value
execute store result score .b bot.interpreter run data get storage bot:interpreter evaluate.stack[-1].b.value

data modify storage bot:interpreter evaluate.operation.result set value {type:"undefined",value: false}

execute if data storage bot:interpreter evaluate.operation{current:"assign"} run function bot:interpreter/evaluate/binary_operation/operations/assign/assign
execute if data storage bot:interpreter evaluate.operation{current:"add_assign"} run function bot:interpreter/evaluate/binary_operation/operations/assign/add
execute if data storage bot:interpreter evaluate.operation{current:"subtract_assign"} run function bot:interpreter/evaluate/binary_operation/operations/assign/subtract
execute if data storage bot:interpreter evaluate.operation{current:"multiply_assign"} run function bot:interpreter/evaluate/binary_operation/operations/assign/multiply
execute if data storage bot:interpreter evaluate.operation{current:"divide_assign"} run function bot:interpreter/evaluate/binary_operation/operations/assign/divide
execute if data storage bot:interpreter evaluate.operation{current:"modulo_assign"} run function bot:interpreter/evaluate/binary_operation/operations/assign/modulo

execute if data storage bot:interpreter evaluate.operation{current:"add"} run function bot:interpreter/evaluate/binary_operation/operations/maths/add
execute if data storage bot:interpreter evaluate.operation{current:"subtract"} run function bot:interpreter/evaluate/binary_operation/operations/maths/subtract
execute if data storage bot:interpreter evaluate.operation{current:"multiply"} run function bot:interpreter/evaluate/binary_operation/operations/maths/multiply
execute if data storage bot:interpreter evaluate.operation{current:"divide"} run function bot:interpreter/evaluate/binary_operation/operations/maths/divide
execute if data storage bot:interpreter evaluate.operation{current:"power"} run function bot:interpreter/evaluate/binary_operation/operations/maths/power
execute if data storage bot:interpreter evaluate.operation{current:"modulo"} run function bot:interpreter/evaluate/binary_operation/operations/maths/modulo

execute if data storage bot:interpreter evaluate.operation{current:"equal"} run function bot:interpreter/evaluate/binary_operation/operations/comparison/equal
execute if data storage bot:interpreter evaluate.operation{current:"not_equal"} run function bot:interpreter/evaluate/binary_operation/operations/comparison/not_equal
execute if data storage bot:interpreter evaluate.operation{current:"greater"} run function bot:interpreter/evaluate/binary_operation/operations/comparison/greater_than
execute if data storage bot:interpreter evaluate.operation{current:"greater_or_equal"} run function bot:interpreter/evaluate/binary_operation/operations/comparison/greater_than_eq
execute if data storage bot:interpreter evaluate.operation{current:"lesser"} run function bot:interpreter/evaluate/binary_operation/operations/comparison/less_than
execute if data storage bot:interpreter evaluate.operation{current:"lesser_or_equal"} run function bot:interpreter/evaluate/binary_operation/operations/comparison/less_than_eq

execute if data storage bot:interpreter evaluate.operation{current:"and"} run function bot:interpreter/evaluate/binary_operation/operations/boolean/and
execute if data storage bot:interpreter evaluate.operation{current:"or"} run function bot:interpreter/evaluate/binary_operation/operations/boolean/or

execute if data storage bot:interpreter evaluate.operation{current:"left_shift"} run function bot:interpreter/evaluate/binary_operation/operations/bitwise/left_shift
execute if data storage bot:interpreter evaluate.operation{current:"right_shift"} run function bot:interpreter/evaluate/binary_operation/operations/bitwise/right_shift

data remove storage bot:interpreter evaluate.stack[-1]
data modify storage bot:interpreter evaluate.stack append from storage bot:interpreter evaluate.operation.result
