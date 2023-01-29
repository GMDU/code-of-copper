execute on passengers as @s[type=marker,tag=bot.golem.brain] run data remove entity @s data.RunRootStack
tellraw @a [{"text": "Runtime Error: ", "color": "red"},{"nbt":"Error","storage": "bot:program", "interpret": true}]
data remove storage bot:program Error
