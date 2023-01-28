scoreboard players set .type bot.execution.variables 0
data modify storage bot:io Out set value 0
data modify storage bot:variables CurrentEvaluation set from storage bot:variables RecursiveEvaluation.evaluateStack[-1]

execute if score .type bot.execution.variables matches 0 if data storage bot:variables CurrentEvaluation{type:"string"} run scoreboard players set .type bot.execution.variables 1
execute if score .type bot.execution.variables matches 0 if data storage bot:variables CurrentEvaluation{type:"integer"} run scoreboard players set .type bot.execution.variables 1
execute if score .type bot.execution.variables matches 0 if data storage bot:variables CurrentEvaluation{type:"array"} run scoreboard players set .type bot.execution.variables 2

execute if score .type bot.execution.variables matches 1 run function bot:golem/execution/print/evaluate/literal
execute if score .type bot.execution.variables matches 2 run function bot:golem/execution/print/evaluate/array

data remove storage bot:variables RecursiveEvaluation.evaluateStack[-1]
scoreboard players set .type bot.execution.variables 0
