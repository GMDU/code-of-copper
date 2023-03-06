data modify storage bot:interpreter/pipeline current set from entity @s data.instructions[-1].value[0]

execute if data entity @s data.instructions[-1].value[0] if data storage bot:interpreter/pipeline current{type:"instruction"} run function bot:interpreter/pipeline/decode/args/init
execute if data entity @s data.instructions[-1].value[0] if data storage bot:interpreter/pipeline current{type:"literal",variant:"function"} run function bot:interpreter/pipeline/decode/args/init

data modify entity @s data.current_instruction set from storage bot:interpreter/pipeline current
