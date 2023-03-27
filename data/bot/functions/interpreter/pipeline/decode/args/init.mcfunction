execute if data storage bot:interpreter/pipeline current{variant:"while"} run data modify storage bot:interpreter/pipeline current.args set from storage bot:interpreter/pipeline current.original_args
execute if data storage bot:interpreter/pipeline current{variant:"while"} run data modify storage bot:interpreter/pipeline current.original_args set from storage bot:interpreter/pipeline current.args
execute unless data storage bot:interpreter/pipeline current.decoded_args run function bot:interpreter/pipeline/decode/args/scratch
execute if data storage bot:interpreter/pipeline current.decoded_args run function bot:interpreter/pipeline/decode/args/partially_decoded

execute if data storage bot:interpreter/pipeline current.args[0] run function bot:interpreter/pipeline/decode/args/loop

execute unless data storage bot:interpreter/pipeline current.args[0] run data modify entity @s data.instructions[-1].value[0].decoded_args set from storage bot:interpreter/pipeline args
execute unless data storage bot:interpreter/pipeline current.args[0] run data modify entity @s data.instructions[-1].value[0].args set from storage bot:interpreter/pipeline current.args
execute unless data storage bot:interpreter/pipeline current.args[0] run data modify entity @s data.instructions[-1].value[0].original_args set from storage bot:interpreter/pipeline current.original_args

# We got a delayed value
execute if data storage bot:interpreter/pipeline current.args[0] run function bot:interpreter/pipeline/decode/args/delayed
