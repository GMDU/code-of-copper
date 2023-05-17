data modify storage bot:interpreter/evaluate stack[-1].b_raw set from storage bot:interpreter/evaluate stack[-1].b
data modify storage bot:interpreter/evaluate stack append from storage bot:interpreter/evaluate stack[-1].b
function bot:interpreter/evaluate_stack

data modify storage bot:interpreter/evaluate stack[-1].b set from storage bot:io Out
tellraw @a {"nbt":"stack[-1].b","storage": "bot:interpreter/evaluate"}
execute if data storage bot:io Out{type:"delayed",variant:"function"} run data remove entity @s data.function_stack[-1]
execute if data storage bot:io Out{type:"delayed",variant:"function"} run data modify entity @s data.function_stack append from storage bot:interpreter/evaluate stack
tellraw @a {"nbt":"data.function_stack","entity": "@s"}
execute if data storage bot:io Out{type:"delayed",variant:"function"} run data modify storage bot:io Out.variant set value "expression"
execute unless data storage bot:io Out{type:"delayed"} run data modify storage bot:interpreter/evaluate stack[-1].evaluated.b set value true
