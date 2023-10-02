data modify storage bot:interpreter evaluate.stack[-1].value set from storage bot:interpreter evaluate.result

data modify storage bot:interpreter evaluate.operation.current set from storage bot:interpreter evaluate.stack[-1].variant
execute store result score $value bot.interpreter run data get storage bot:interpreter evaluate.stack[-1].value.value

data modify storage bot:interpreter evaluate.operation.result set value {type:"undefined",value: false}

execute if data storage bot:interpreter evaluate.operation{current:"negation"} run function bot:interpreter/evaluate/unary_operation/operations/negation
execute if data storage bot:interpreter evaluate.operation{current:"logical_not"} run function bot:interpreter/evaluate/unary_operation/operations/logical_not

data remove storage bot:interpreter evaluate.stack[-1]
data modify storage bot:interpreter evaluate.stack append from storage bot:interpreter evaluate.operation.result