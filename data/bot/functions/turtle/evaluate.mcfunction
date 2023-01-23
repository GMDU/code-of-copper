scoreboard players set .type bot.variables 0
data modify storage bot:io Out set value 0

execute if data storage bot:io In{type:"integer"} run scoreboard players set .type bot.variables 1
execute if score .type bot.variables matches 0 if data storage bot:io In{type:"string"} run scoreboard players set .type bot.variables 2
execute if score .type bot.variables matches 0 if data storage bot:io In{type:"variable"} run scoreboard players set .type bot.variables 3
execute if score .type bot.variables matches 0 if data storage bot:io In{type:"array"} run scoreboard players set .type bot.variables 4
execute if score .type bot.variables matches 0 if data storage bot:io In{type:"object"} run scoreboard players set .type bot.variables 5
execute if score .type bot.variables matches 0 if data storage bot:io In{type:"boolean"} run scoreboard players set .type bot.variables 6
execute if score .type bot.variables matches 0 if data storage bot:io In{type:"expression"} run scoreboard players set .type bot.variables 7

execute if score .type bot.variables matches 1 run function bot:turtle/evaluate/integer
execute if score .type bot.variables matches 4 run function bot:turtle/evaluate/array
execute if score .type bot.variables matches 7 run function bot:turtle/evaluate/expression

