# data modify storage bot:interpreter utils.stringify.input set from storage bot:interpreter stack[-1].args[0]

# function bot:interpreter/utils/stringify/init

# execute at @s run tellraw @a[distance=..16] {"nbt":"output", "storage": "bot:interpreter/utils/stringify", "interpret": true}
# data modify entity @s data.return_value set value {type:"undefined",value:undefined}

tellraw @a {"storage":"bot:interpreter","nbt":"evaluate.stack[-1].args[0]"}