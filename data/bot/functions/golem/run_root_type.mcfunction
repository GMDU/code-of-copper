execute on passengers as @s[type=marker,tag=bot.golem.brain] run data modify storage bot:program Current set from entity @s data.RunRootStack[-1].value[0]
function bot:golem/execute
execute on passengers as @s[type=marker,tag=bot.golem.brain] store result score .is_looping bot.execution.variables run data get entity @s data.RunRootStack[-1].isLooping
execute unless score .is_looping bot.execution.variables matches 1 on passengers as @s[type=marker,tag=bot.golem.brain] run data remove entity @s data.RunRootStack[-1].value[0]

execute on passengers as @s[type=marker,tag=bot.golem.brain] unless data entity @s data.RunRootStack[-1].value[0] run data remove entity @s data.RunRootStack[-1]

execute if data storage bot:program Error run function bot:golem/error
