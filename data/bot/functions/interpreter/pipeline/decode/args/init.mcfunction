execute unless data storage bot:interpreter/pipeline current.decoded_args run function bot:interpreter/pipeline/decode/args/scratch
execute if data storage bot:interpreter/pipeline current.decoded_args run function bot:interpreter/pipeline/decode/args/partially_decoded

execute if data storage bot:interpreter/pipeline current.args[0] run function bot:interpreter/pipeline/decode/args/loop

# We got a function
execute if data storage bot:interpreter/pipeline current.args[0] run function bot:interpreter/pipeline/decode/args/function

execute unless data storage bot:interpreter/pipeline current.args[0] run data modify entity @s data.instructions[-1].value[0].decoded_args set from storage bot:interpreter/pipeline args
execute unless data storage bot:interpreter/pipeline current.args[0] run data modify entity @s data.instructions[-1].value[0].args set from storage bot:interpreter/pipeline current.args
