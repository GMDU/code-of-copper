execute store result score .value bot.execution.variables run data get storage bot:variables RecursiveEvaluation.expressionStack[-1].expressionValue
execute store result score .expression bot.execution.variables run data get storage bot:variables RecursiveEvaluation.expressionStack[-1].expressionExpression

execute store result storage bot:io Out int 1 if score .value bot.execution.variables <= .expression bot.execution.variables
