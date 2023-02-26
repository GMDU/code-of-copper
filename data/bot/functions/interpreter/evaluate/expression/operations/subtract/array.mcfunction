data modify storage bot:io Out set from storage bot:interpreter/expression stack[-1].expressionValue
execute unless score .expression bot.execution.variables matches 0 run function bot:interpreter/evaluate/expression/operations/subtract/loop
