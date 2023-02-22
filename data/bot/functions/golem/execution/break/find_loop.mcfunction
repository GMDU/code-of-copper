data modify storage bot:variables last_instruction set from entity @s data.RunRootStack[-1]

execute if data storage bot:variables last_instruction{isLooping:true} run scoreboard players set .found bot.execution.variables 1

data remove entity @s data.RunRootStack[-1]

execute if data entity @s data.RunRootStack[-1] if score .found bot.execution.variables matches 0 run function bot:golem/execution/break/find_loop
