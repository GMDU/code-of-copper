scoreboard players set .error bot.execution.variables 0

data modify storage bot:interpreter/execution args set from storage bot:interpreter/execution current.decoded_args

tellraw @a {"nbt":"args","storage": "bot:interpreter/execution"}

execute if data storage moxlib:api/data/get output.args[0] run function bot:interpreter/execution/function/stdlib/verify/iterate

execute if data storage bot:interpreter/execution args[0] run scoreboard players set .error bot.execution.variables 1

execute if score .error bot.execution.variables matches 1 run data modify storage bot:interpreter/execution Error set value [[],[" - Invalid arguments"]]
execute if score .error bot.execution.variables matches 1 run data modify storage bot:interpreter/execution Error[0] set from storage bot:interpreter/execution current.name
