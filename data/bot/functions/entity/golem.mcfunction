tag @s add bot.golem.target
data modify entity @s Motion[0] set value 0d
data modify entity @s Motion[2] set value 0d
data modify entity @s Rotation[0] set value 0f
data modify storage bot:temp Rotation set from entity @s Rotation

tag @s remove bot.has_brain
execute on passengers run function bot:entity/passengers

execute as @s[tag=!bot.has_brain] at @s run function bot:entity/summon
kill @s[tag=!bot.has_brain]

tag @s remove bot.golem.target