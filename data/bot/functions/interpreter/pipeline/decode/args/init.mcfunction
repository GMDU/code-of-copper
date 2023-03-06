data modify storage bot:interpreter/pipeline args set value []

execute if data storage bot:interpreter/pipeline current.args[0] run function bot:interpreter/pipeline/decode/args/loop

data modify entity @s data.instructions[-1].value[0].decoded_args set from storage bot:interpreter/pipeline args
