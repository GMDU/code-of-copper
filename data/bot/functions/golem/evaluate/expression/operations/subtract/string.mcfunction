data modify storage bot:io Out set from storage bot:variables expressionStack[-1].expressionValue
execute unless score .expression bot.execution.variables matches 0 run function bot:golem/evaluate/expression/operations/subtract/loop
