data modify storage bot:interpreter/pipeline current set from entity @s data.instructions[-1].value[0]

execute if data entity @s data.instructions[-1].value[0] run function bot:interpreter/decode/args/init

data modify entity @s data.current_instruction set from storage bot:interpreter/pipeline current
