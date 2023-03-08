execute if score .global bot.dev_mode matches 1 run tellraw @a [{"text": "Print: printing ", "color": "green"},{"nbt": "Out", "storage": "bot:io", "color": "yellow"}]

data modify storage bot:interpreter/utils/stringify input set from storage bot:interpreter/execution current.decoded_args[0]

function bot:interpreter/utils/stringify/init

execute at @s run tellraw @a[distance=..16] {"nbt":"output", "storage": "bot:interpreter/utils/stringify", "interpret": true}
