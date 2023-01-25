data modify storage bot:variables operation set from storage bot:variables RecursiveEvaluation.evaluateStack[-1].operation
execute store result score .value bot.execution.variables run data get storage bot:variables RecursiveEvaluation.expressionStack[-1].expressionValue.value
execute store result score .expression bot.execution.variables run data get storage bot:variables RecursiveEvaluation.expressionStack[-1].expressionExpression.value
execute if data storage bot:variables {operation:"add"} run function bot:golem/evaluate/expression/operations/add
execute if data storage bot:variables {operation:"subtract"} run function bot:golem/evaluate/expression/operations/subtract
execute if data storage bot:variables {operation:"multiply"} run function bot:golem/evaluate/expression/operations/multiply
execute if data storage bot:variables {operation:"divide"} run function bot:golem/evaluate/expression/operations/divide
execute if data storage bot:variables {operation:"modulo"} run function bot:golem/evaluate/expression/operations/modulo
execute if data storage bot:variables {operation:"equals"} run function bot:golem/evaluate/expression/operations/equals
execute if data storage bot:variables {operation:"greaterThan"} run function bot:golem/evaluate/expression/operations/greater_than
execute if data storage bot:variables {operation:"greaterThanEq"} run function bot:golem/evaluate/expression/operations/greater_than_eq
execute if data storage bot:variables {operation:"lessThan"} run function bot:golem/evaluate/expression/operations/less_than
execute if data storage bot:variables {operation:"lessThanEq"} run function bot:golem/evaluate/expression/operations/less_than_eq

data modify storage bot:variables Result set from storage bot:io Out
data modify storage bot:io Out set value {"type": "number", "value": 0}
data modify storage bot:io Out.value set from storage bot:variables Result
