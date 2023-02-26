data modify storage bot:interpreter/pipeline args set value []

execute if data storage bot:interpreter/pipeline current.args[0] run function bot:interpreter/decode/args/loop

data modify storage bot:interpreter/pipeline current.args set from storage bot:interpreter/pipeline args
