data modify storage bot:interpreter/pipeline current_arg set from storage bot:interpreter/pipeline current.args[0]
data modify storage bot:io In set from storage bot:interpreter/pipeline current_arg

execute unless data storage bot:interpreter/pipeline current_arg{type:"block"} unless data storage bot:interpreter/pipeline current_arg{type:"literal",variant:"function"} run function bot:interpreter/evaluate
execute unless data storage bot:interpreter/pipeline current_arg{type:"block"} unless data storage bot:interpreter/pipeline current_arg{type:"literal",variant:"function"} run data modify storage bot:interpreter/pipeline args append from storage bot:io Out
execute if data storage bot:interpreter/pipeline current_arg{type:"block"} run data modify storage bot:interpreter/pipeline args append from storage bot:interpreter/pipeline current.args[0]

execute if data storage bot:interpreter/pipeline current.args[0] unless data storage bot:interpreter/pipeline current_arg{type:"literal",variant:"function"} run data remove storage bot:interpreter/pipeline current.args[0]

execute if data storage bot:interpreter/pipeline current.args[0] unless data storage bot:interpreter/pipeline current_arg{type:"literal",variant:"function"} run function bot:interpreter/pipeline/decode/args/loop
