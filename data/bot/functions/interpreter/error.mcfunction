execute on passengers as @s[type=marker,tag=bot.golem.brain] run data remove entity @s data.instructions
execute at @s run tellraw @a[distance=..16] [{"text": "Runtime Error: ", "color": "red"},{"nbt":"Error","storage": "bot:interpreter/execution", "interpret": true}]
data remove storage bot:interpreter/execution Error
