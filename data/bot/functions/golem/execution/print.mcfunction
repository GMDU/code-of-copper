data modify storage bot:io In set from storage bot:program Current.args[0]

execute if score .global bot.dev_mode matches 1 run tellraw @a [{"text": "Print: evaluating ", "color": "green"},{"nbt": "In", "storage": "bot:io", "color": "yellow"}]

function bot:golem/evaluate

execute if score .global bot.dev_mode matches 1 run tellraw @a [{"text": "Print: got ", "color": "green"},{"nbt": "Out", "storage": "bot:io", "color": "yellow"}]

data modify storage bot:io In set from storage bot:io Out
function bot:golem/execution/print/evaluate
execute at @s run tellraw @a[distance=..16] {"nbt":"Out", "storage": "bot:io", "interpret": true}
