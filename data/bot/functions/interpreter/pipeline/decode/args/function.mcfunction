data modify storage bot:interpreter/pipeline no_execution set value true
data modify entity @s data.instructions[-1].value prepend from storage bot:interpreter/pipeline current.args[0]
data remove storage bot:interpreter/pipeline current.args[0]

data modify entity @s data.instructions[-1].value[1].decoded_args set from storage bot:interpreter/pipeline args
data modify entity @s data.instructions[-1].value[1].args set from storage bot:interpreter/pipeline current.args
