data modify storage bot:dev_mode logs append value '[{"text": "Print: printing ", "color": "green"},{"nbt": "Out", "storage": "bot:io", "color": "yellow"}]'

data modify storage bot:interpreter/utils/stringify input set from storage bot:interpreter/execution current.decoded_args[0]

function bot:interpreter/utils/stringify/init

execute at @s run tellraw @a[distance=..16] {"nbt":"output", "storage": "bot:interpreter/utils/stringify", "interpret": true}
data modify entity @s data.return_value set value {type:"undefined",value:undefined}
