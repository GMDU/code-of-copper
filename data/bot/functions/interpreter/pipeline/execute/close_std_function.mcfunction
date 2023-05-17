data modify storage bot:interpreter/evaluate stack set value []
data modify storage bot:interpreter/evaluate stack set from entity @s data.function_stack[-1]
data remove entity @s data.function_stack[-1]

execute if data storage bot:interpreter/evaluate stack[0] run function bot:interpreter/evaluate_stack
