data modify storage bot:interpreter/execution Current set from entity @s data.current_instruction

execute if data entity @s data.instructions[-1].value[0] run function bot:interpreter/execute/init
execute store result score .is_looping bot.execution.variables run data get entity @s data.instructions[-1].isLooping
execute unless score .is_looping bot.execution.variables matches 1 run data remove entity @s data.instructions[-1].value[0]

execute unless data entity @s data.instructions[-1].value[0] run function bot:interpreter/pipeline/execute/remove_nesting

execute if data storage bot:interpreter/execution Error run function bot:interpreter/error
