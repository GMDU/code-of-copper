scoreboard players set .type bot.execution.variables 0
data modify storage bot:io Out set value 0

execute if data storage bot:io In{type:"literal"} run scoreboard players set .type bot.execution.variables 1
execute if score .type bot.execution.variables matches 0 if data storage bot:io In{type:"variable"} run scoreboard players set .type bot.execution.variables 2
execute if score .type bot.execution.variables matches 0 if data storage bot:io In{type:"array"} run scoreboard players set .type bot.execution.variables 3
execute if score .type bot.execution.variables matches 0 if data storage bot:io In{type:"object"} run scoreboard players set .type bot.execution.variables 4
execute if score .type bot.execution.variables matches 0 if data storage bot:io In{type:"boolean"} run scoreboard players set .type bot.execution.variables 5
execute if score .type bot.execution.variables matches 0 if data storage bot:io In{type:"expression"} run scoreboard players set .type bot.execution.variables 6

execute if score .type bot.execution.variables matches 1 run function bot:turtle/evaluate/literal
execute if score .type bot.execution.variables matches 3 run function bot:turtle/evaluate/array
execute if score .type bot.execution.variables matches 6 run function bot:turtle/evaluate/expression

