data modify storage bot:interpreter evaluate.stack[-1].b_evaluated set from storage bot:interpreter evaluate.result

data modify storage bot:interpreter evaluate.operation set from storage bot:interpreter evaluate.stack[-1].op.variant
execute store result score .a bot.interpreter run data get storage bot:interpreter evaluate.stack[-1].a_evaluated.value
execute store result score .b bot.interpreter run data get storage bot:interpreter evaluate.stack[-1].b_evaluated.value

data modify storage bot:interpreter evaluate.binary_operation.result set value {type:"undefined",value:undefined}

# execute if data storage bot:interpreter evaluate{operation:"assign"} run function bot:interpreter/evaluate/binary_operation/operations/assign/assign
# execute if data storage bot:interpreter evaluate{operation:"add_assign"} run function bot:interpreter/evaluate/binary_operation/operations/assign/add
# execute if data storage bot:interpreter evaluate{operation:"subtract_assign"} run function bot:interpreter/evaluate/binary_operation/operations/assign/subtract
# execute if data storage bot:interpreter evaluate{operation:"multiply_assign"} run function bot:interpreter/evaluate/binary_operation/operations/assign/multiply
# execute if data storage bot:interpreter evaluate{operation:"divide_assign"} run function bot:interpreter/evaluate/binary_operation/operations/assign/divide
# execute if data storage bot:interpreter evaluate{operation:"modulo_assign"} run function bot:interpreter/evaluate/binary_operation/operations/assign/modulo

execute if data storage bot:interpreter evaluate{operation:"add"} run function bot:interpreter/evaluate/binary_operation/operations/maths/add
execute if data storage bot:interpreter evaluate{operation:"subtract"} run function bot:interpreter/evaluate/binary_operation/operations/maths/subtract
execute if data storage bot:interpreter evaluate{operation:"multiply"} run function bot:interpreter/evaluate/binary_operation/operations/maths/multiply
execute if data storage bot:interpreter evaluate{operation:"divide"} run function bot:interpreter/evaluate/binary_operation/operations/maths/divide
execute if data storage bot:interpreter evaluate{operation:"power"} run function bot:interpreter/evaluate/binary_operation/operations/maths/power
execute if data storage bot:interpreter evaluate{operation:"modulo"} run function bot:interpreter/evaluate/binary_operation/operations/maths/modulo

execute if data storage bot:interpreter evaluate{operation:"equal"} run function bot:interpreter/evaluate/binary_operation/operations/comparison/equal
execute if data storage bot:interpreter evaluate{operation:"not_equal"} run function bot:interpreter/evaluate/binary_operation/operations/comparison/not_equal
execute if data storage bot:interpreter evaluate{operation:"greater"} run function bot:interpreter/evaluate/binary_operation/operations/comparison/greater_than
execute if data storage bot:interpreter evaluate{operation:"greater_or_equal"} run function bot:interpreter/evaluate/binary_operation/operationscomparison//greater_than_eq
execute if data storage bot:interpreter evaluate{operation:"lesser"} run function bot:interpreter/evaluate/binary_operation/operations/comparison/less_than
execute if data storage bot:interpreter evaluate{operation:"lesser_or_equal"} run function bot:interpreter/evaluate/binary_operation/operations/comparison/less_than_eq

execute if data storage bot:interpreter evaluate{operation:"and"} run function bot:interpreter/evaluate/binary_operation/operations/boolean/and
execute if data storage bot:interpreter evaluate{operation:"or"} run function bot:interpreter/evaluate/binary_operation/operations/boolean/or

data remove storage bot:interpreter evaluate.stack[-1]
data modify storage bot:interpreter evaluate.stack append from storage bot:interpreter evaluate.binary_operation.result
