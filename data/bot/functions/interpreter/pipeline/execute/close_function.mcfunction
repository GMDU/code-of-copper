data modify storage bot:interpreter/evaluate stack set value []
data modify storage bot:interpreter/evaluate stack set from entity @s data.instructions[-1].save_stack

data modify entity @s data.return_value set value {type:"undefined",value:undefined}

execute if data storage bot:interpreter/evaluate stack[0] run function bot:interpreter/evaluate_stack
