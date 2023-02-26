data modify storage bot:interpreter/execution Current set from entity @s data.current_instruction

execute if data entity @s data.instructions[-1].value[0] on vehicle run function bot:interpreter/execute
execute store result score .is_looping bot.execution.variables run data get entity @s data.instructions[-1].isLooping
execute unless score .is_looping bot.execution.variables matches 1 run data remove entity @s data.instructions[-1].value[0]

execute unless data entity @s data.instructions[-1].value[0] run data remove entity @s data.instructions[-1]

execute if data storage bot:interpreter/execution Error run function bot:interpreter/error
