scoreboard players set .found bot.execution.variables 0

execute on passengers as @s[type=marker,tag=bot.golem.brain] run function bot:interpreter/execution/break/loop

execute on passengers as @s[type=marker,tag=bot.golem.brain] unless data entity @s data.instructions[-1] if score .found bot.execution.variables matches 0 run data modify storage bot:interpreter/execution Error set value ["Break instruction can only be used inside loops"]
