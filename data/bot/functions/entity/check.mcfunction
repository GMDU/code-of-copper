tag @s remove bot.has_golem
execute as @s[tag=!bot.has_golem] on vehicle run execute on passengers run tag @s add bot.has_golem
execute as @s[tag=!bot.has_golem] at @s run function bot:entity/kill
