execute unless score .global bot.dev_mode matches 1 run tellraw @a[scores={bot.dev_mode=1}] {"nbt":"logs[0]","storage": "bot:dev_mode","interpret": true}
execute if score .global bot.dev_mode matches 1 run tellraw @a {"nbt":"logs[0]","storage": "bot:dev_mode","interpret": true}

data remove storage bot:dev_mode logs[0]

execute if data storage bot:dev_mode logs[0] run function bot:interpreter/dev_mode/iterate
