execute if score .expression bot.execution.variables matches 1.. run data remove storage bot:io Out.value[-1]
execute if score .expression bot.execution.variables matches ..-1 run data remove storage bot:io Out.value[0]
execute if score .expression bot.execution.variables matches 1.. run scoreboard players remove .expression bot.execution.variables 1
execute if score .expression bot.execution.variables matches ..-1 run scoreboard players add .expression bot.execution.variables 1
execute unless score .expression bot.execution.variables matches 0 run function bot:interpreter/evaluate/expression/operations/subtract/loop
