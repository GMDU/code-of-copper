data modify storage bot:interpreter/evaluate operation set from storage bot:interpreter/evaluate stack[-1].operation
execute store result score .value bot.execution.variables run data get storage bot:interpreter/expression stack[-1].expressionValue.value
execute store result score .expression bot.execution.variables run data get storage bot:interpreter/expression stack[-1].expressionExpression.value
data modify storage bot:io Out set value {"type": "integer", "value": 0}
execute if data storage bot:interpreter/evaluate {operation:"add"} run function bot:golem/evaluate/expression/operations/add
execute if data storage bot:interpreter/evaluate {operation:"subtract"} run function bot:golem/evaluate/expression/operations/subtract
execute if data storage bot:interpreter/evaluate {operation:"multiply"} run function bot:golem/evaluate/expression/operations/multiply
execute if data storage bot:interpreter/evaluate {operation:"divide"} run function bot:golem/evaluate/expression/operations/divide
execute if data storage bot:interpreter/evaluate {operation:"modulo"} run function bot:golem/evaluate/expression/operations/modulo
execute if data storage bot:interpreter/evaluate {operation:"equals"} run function bot:golem/evaluate/expression/operations/equals
execute if data storage bot:interpreter/evaluate {operation:"greaterThan"} run function bot:golem/evaluate/expression/operations/greater_than
execute if data storage bot:interpreter/evaluate {operation:"greaterThanEq"} run function bot:golem/evaluate/expression/operations/greater_than_eq
execute if data storage bot:interpreter/evaluate {operation:"lessThan"} run function bot:golem/evaluate/expression/operations/less_than
execute if data storage bot:interpreter/evaluate {operation:"lessThanEq"} run function bot:golem/evaluate/expression/operations/less_than_eq
