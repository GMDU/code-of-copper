data modify storage bot:interpreter/evaluate stack[-1].a_raw set from storage bot:interpreter/evaluate stack[-1].a
data modify storage bot:interpreter/evaluate stack append from storage bot:interpreter/evaluate stack[-1].a
function bot:interpreter/evaluate_stack

data modify storage bot:interpreter/evaluate stack[-1].a set from storage bot:io Out
execute if data storage bot:io Out{type:"delayed",variant:"function"} run data remove entity @s data.function_stack[-1]
execute if data storage bot:io Out{type:"delayed",variant:"function"} run data modify entity @s data.function_stack append from storage bot:interpreter/evaluate stack
execute if data storage bot:io Out{type:"delayed",variant:"function"} run data modify storage bot:io Out.variant set value "expression"
execute unless data storage bot:io Out{type:"delayed"} run data modify storage bot:interpreter/evaluate stack[-1].evaluated.a set value true
