data remove storage bot:variables RunRootStack
tellraw @a [{"text": "Runtime Error: ", "color": "red"},{"nbt":"Error","storage": "bot:program", "interpret": true}]
data remove storage bot:program Error
