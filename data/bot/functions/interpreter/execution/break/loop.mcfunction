data modify storage bot:interpreter/execution last_instruction set from entity @s data.instructions[-1]

execute if data storage bot:interpreter/execution last_instruction{isLooping:true} run scoreboard players set .found bot.execution.variables 1

data remove entity @s data.instructions[-1]

execute if data entity @s data.instructions[-1] if score .found bot.execution.variables matches 0 run function bot:interpreter/execution/break/loop
