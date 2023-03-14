data modify storage bot:interpreter/execution temp set from storage bot:interpreter/execution args[0].type
execute store result score .error bot.execution.variables run data modify storage bot:interpreter/execution temp set from storage moxlib:api/data/get output.args[0].type
execute if data storage bot:interpreter/execution {temp:"any"} run scoreboard players set .error bot.execution.variables 0

execute unless data storage bot:interpreter/execution args[0] run scoreboard players set .error bot.execution.variables 1

data remove storage bot:interpreter/execution args[0]
data remove storage moxlib:api/data/get output.args[0]

execute if data storage moxlib:api/data/get output.args[0] unless score .error bot.execution.variables matches 1 run function bot:interpreter/execution/function/stdlib/verify/iterate
