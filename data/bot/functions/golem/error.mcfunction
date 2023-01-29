execute on passengers as @s[type=marker,tag=bot.golem.brain] run data remove entity @s data.RunRootStack
execute at @s run tellraw @a[distance=..16] [{"text": "Runtime Error: ", "color": "red"},{"nbt":"Error","storage": "bot:program", "interpret": true}]
data remove storage bot:program Error
