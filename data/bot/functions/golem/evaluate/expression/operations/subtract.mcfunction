execute store result score .value bot.execution.variables run data get storage bot:variables RecursiveEvaluation.expressionStack[-1].expressionValue[0]
execute store result score .expression bot.execution.variables run data get storage bot:variables RecursiveEvaluation.expressionStack[-1].expressionExpression[0]

execute store result storage bot:io Out int 1 run scoreboard players operation .value bot.execution.variables -= .expression bot.execution.variables
