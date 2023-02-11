scoreboard players set .type bot.execution.variables 0
data modify storage bot:variables CurrentEvaluation set from storage bot:variables stack[-1]

execute if score .type bot.execution.variables matches 0 if data storage bot:variables CurrentEvaluation{type:"integer"} run scoreboard players set .type bot.execution.variables 1
execute if score .type bot.execution.variables matches 0 if data storage bot:variables CurrentEvaluation{type:"string"} run scoreboard players set .type bot.execution.variables 2
execute if score .type bot.execution.variables matches 0 if data storage bot:variables CurrentEvaluation{type:"array"} run scoreboard players set .type bot.execution.variables 3
execute if score .type bot.execution.variables matches 0 if data storage bot:variables CurrentEvaluation{type:"object"} run scoreboard players set .type bot.execution.variables 4
execute if score .type bot.execution.variables matches 0 if data storage bot:variables CurrentEvaluation{type:"undefined"} run scoreboard players set .type bot.execution.variables 5

execute if score .type bot.execution.variables matches 0 run data modify storage bot:program Error set value ["print - Unknown type: "]
execute if score .type bot.execution.variables matches 0 run data modify storage bot:program Error append from storage bot:variables CurrentEvaluation.type
execute if score .type bot.execution.variables matches 1 run function bot:golem/execution/print/evaluate/integer
execute if score .type bot.execution.variables matches 2 run function bot:golem/execution/print/evaluate/string
execute if score .type bot.execution.variables matches 3 run function bot:golem/execution/print/evaluate/array
execute if score .type bot.execution.variables matches 4 run function bot:golem/execution/print/evaluate/object
execute if score .type bot.execution.variables matches 5 run data modify storage bot:io Out append value ["undefined"]

data remove storage bot:variables stack[-1]
scoreboard players set .type bot.execution.variables 0
