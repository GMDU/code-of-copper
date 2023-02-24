data modify storage bot:io In set from storage bot:interpreter/execution Current.args[0]

execute if score .global bot.dev_mode matches 1 run tellraw @a [{"text": "Print: evaluating ", "color": "green"},{"nbt": "In", "storage": "bot:io", "color": "yellow"}]

function bot:golem/evaluate

execute if score .global bot.dev_mode matches 1 run tellraw @a [{"text": "Print: got ", "color": "green"},{"nbt": "Out", "storage": "bot:io", "color": "yellow"}]

data modify storage bot:interpreter/utils/stringify input set from storage bot:io Out

function bot:golem/utils/stringify/init
execute at @s run tellraw @a[distance=..16] {"nbt":"output", "storage": "bot:interpreter/utils/stringify", "interpret": true}
