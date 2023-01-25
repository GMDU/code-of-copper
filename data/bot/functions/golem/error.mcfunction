data remove storage bot:variables RunRootStack[-1].values[0]
tellraw @a [{"text": "Runtime Error: ", "color": "red"},{"nbt":"Error","storage": "bot:program", "interpret": true}]
data remove storage bot:program Error
