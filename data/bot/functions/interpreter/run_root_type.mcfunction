execute on passengers as @s[type=marker,tag=bot.golem.brain] run data modify storage bot:interpreter/execution Current set from entity @s data.instructions[-1].value[0]
function bot:interpreter/execute
execute on passengers as @s[type=marker,tag=bot.golem.brain] store result score .is_looping bot.execution.variables run data get entity @s data.instructions[-1].isLooping
execute unless score .is_looping bot.execution.variables matches 1 on passengers as @s[type=marker,tag=bot.golem.brain] run data remove entity @s data.instructions[-1].value[0]

execute on passengers as @s[type=marker,tag=bot.golem.brain] unless data entity @s data.instructions[-1].value[0] run data remove entity @s data.instructions[-1]

execute if data storage bot:interpreter/execution Error run function bot:interpreter/error
