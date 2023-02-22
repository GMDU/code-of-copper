data modify entity @s Rotation set from storage bot:temp Rotation

execute as @s[tag=bot.golem.brain] on vehicle run tag @s add bot.has_brain
execute as @s[tag=bot.golem.brain] run function bot:entity/status

execute as @s[tag=bot.golem.hitbox] run function bot:entity/hitbox