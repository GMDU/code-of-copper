data modify storage bot:variables operation set from storage bot:variables RecursiveEvaluation.evaluateStack[-1].operation
tellraw @a {"nbt":"RecursiveEvaluation.evaluateStack[-1]", "storage": "bot:variables"}
execute if data storage bot:variables {operation:"add"} run function bot:turtle/evaluate/expression/operations/add
execute if data storage bot:variables {operation:"subtract"} run function bot:turtle/evaluate/expression/operations/subtract
execute if data storage bot:variables {operation:"multiply"} run function bot:turtle/evaluate/expression/operations/multiply
execute if data storage bot:variables {operation:"divide"} run function bot:turtle/evaluate/expression/operations/divide
execute if data storage bot:variables {operation:"modulo"} run function bot:turtle/evaluate/expression/operations/modulo
execute if data storage bot:variables {operation:"equals"} run function bot:turtle/evaluate/expression/operations/equals
execute if data storage bot:variables {operation:"greaterThan"} run function bot:turtle/evaluate/expression/operations/greater_than
execute if data storage bot:variables {operation:"greaterThanEq"} run function bot:turtle/evaluate/expression/operations/greater_than_eq
execute if data storage bot:variables {operation:"lessThan"} run function bot:turtle/evaluate/expression/operations/less_than
execute if data storage bot:variables {operation:"lessThanEq"} run function bot:turtle/evaluate/expression/operations/less_than_eq
