scoreboard players set .type bot.execution.variables 0
data modify storage bot:io Out set value {type: "undefined", value: undefined}
data modify storage bot:variables CurrentEvaluation set from storage bot:variables stack[-1]

execute if score .type bot.execution.variables matches 0 if data storage bot:variables CurrentEvaluation{type:"literal",variant:"integer"} run scoreboard players set .type bot.execution.variables 1
execute if score .type bot.execution.variables matches 0 if data storage bot:variables CurrentEvaluation{type:"literal",variant:"string"} run scoreboard players set .type bot.execution.variables 2
execute if score .type bot.execution.variables matches 0 if data storage bot:variables CurrentEvaluation{type:"literal",variant:"variable"} run scoreboard players set .type bot.execution.variables 3
execute if score .type bot.execution.variables matches 0 if data storage bot:variables CurrentEvaluation{type:"literal",variant:"array"} run scoreboard players set .type bot.execution.variables 4
execute if score .type bot.execution.variables matches 0 if data storage bot:variables CurrentEvaluation{type:"literal",variant:"object"} run scoreboard players set .type bot.execution.variables 5
execute if score .type bot.execution.variables matches 0 if data storage bot:variables CurrentEvaluation{type:"expression"} run scoreboard players set .type bot.execution.variables 6

execute if score .type bot.execution.variables matches 1 run function bot:golem/evaluate/integer
execute if score .type bot.execution.variables matches 2 run function bot:golem/evaluate/string
execute if score .type bot.execution.variables matches 3 run function bot:golem/evaluate/variable
execute if score .type bot.execution.variables matches 4 run function bot:golem/evaluate/array
execute if score .type bot.execution.variables matches 5 run function bot:golem/evaluate/object
execute if score .type bot.execution.variables matches 6 run function bot:golem/evaluate/expression

data remove storage bot:variables stack[-1]
scoreboard players set .type bot.execution.variables 0
