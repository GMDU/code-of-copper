data modify storage bot:interpreter temp set from storage bot:interpreter/expression stack[-1].expressionExpression
execute store result score .can_remain bot.execution.variables run data modify storage bot:interpreter temp set from storage bot:interpreter/expression stack[-1].expressionValue.value[0].key

execute if score .can_remain bot.execution.variables matches 1 run data modify storage bot:io Out.value append from storage bot:interpreter/expression stack[-1].expressionValue.value[0]

data remove storage bot:interpreter/expression stack[-1].expressionValue.value[0]

execute if data storage bot:interpreter/expression stack[-1].expressionValue.value[0] run function bot:interpreter/evaluate/expression/operations/subtract/object_loop
