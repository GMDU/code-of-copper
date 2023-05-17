data modify storage bot:io Out set value {type:"delayed",variant:"function"}

data modify entity @s data.instructions[-1].value prepend from storage bot:interpreter/evaluate stack[-1]

execute if score .decode_execute bot.pipeline matches 1 run data remove entity @s data.instructions[-1].value[1]
execute if score .decode_execute bot.pipeline matches 1 run data modify entity @s data.instructions[-1].value prepend value {}

data remove storage bot:interpreter/evaluate stack[-1]
data modify storage bot:interpreter/evaluate stack append value {type:"delayed",variant:"function"}

data modify entity @s data.function_stack append from storage bot:interpreter/evaluate stack
