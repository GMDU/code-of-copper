data modify storage bot:io In set from storage bot:program Current.args[0]
function bot:golem/evaluate
data modify storage bot:io In set from storage bot:io Out
function bot:golem/execution/print/evaluate
execute at @s run tellraw @a[distance=..16] {"nbt":"Out", "storage": "bot:io", "interpret": true}
