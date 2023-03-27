data modify storage bot:io Out set value {type:"delayed"}

data modify entity @s data.instructions[-1].value prepend from storage bot:interpreter/evaluate stack[-1]

data remove storage bot:interpreter/evaluate stack[-1]
data modify storage bot:interpreter/evaluate stack append value {type:"delayed"}

data modify entity @s data.function_stack append from storage bot:interpreter/evaluate stack
