scoreboard players set .type bot.execution.variables 0
data modify storage bot:interpreter/execution currentEvaluation set from storage bot:interpreter/utils/stringify stack[-1]

execute if score .type bot.execution.variables matches 0 if data storage bot:interpreter/execution currentEvaluation{type:"integer"} run scoreboard players set .type bot.execution.variables 1
execute if score .type bot.execution.variables matches 0 if data storage bot:interpreter/execution currentEvaluation{type:"string"} run scoreboard players set .type bot.execution.variables 2
execute if score .type bot.execution.variables matches 0 if data storage bot:interpreter/execution currentEvaluation{type:"regex"} run scoreboard players set .type bot.execution.variables 3
execute if score .type bot.execution.variables matches 0 if data storage bot:interpreter/execution currentEvaluation{type:"array"} run scoreboard players set .type bot.execution.variables 4
execute if score .type bot.execution.variables matches 0 if data storage bot:interpreter/execution currentEvaluation{type:"object"} run scoreboard players set .type bot.execution.variables 5
execute if score .type bot.execution.variables matches 0 if data storage bot:interpreter/execution currentEvaluation{type:"undefined"} run scoreboard players set .type bot.execution.variables 6

execute if score .type bot.execution.variables matches 0 run data modify storage bot:interpreter/execution Error set value ["print - Unknown type: "]
execute if score .type bot.execution.variables matches 0 run data modify storage bot:interpreter/execution Error append from storage bot:interpreter/execution currentEvaluation.type
execute if score .type bot.execution.variables matches 1 run function bot:interpreter/utils/stringify/integer
execute if score .type bot.execution.variables matches 2 run function bot:interpreter/utils/stringify/string
execute if score .type bot.execution.variables matches 3 run function bot:interpreter/utils/stringify/regex
execute if score .type bot.execution.variables matches 4 run function bot:interpreter/utils/stringify/array
execute if score .type bot.execution.variables matches 5 run function bot:interpreter/utils/stringify/object
execute if score .type bot.execution.variables matches 6 run data modify storage bot:interpreter/utils/stringify output append value ["undefined"]

data remove storage bot:interpreter/utils/stringify stack[-1]
scoreboard players set .type bot.execution.variables 0
