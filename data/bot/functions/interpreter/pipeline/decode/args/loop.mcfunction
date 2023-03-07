data modify storage bot:io In set from storage bot:interpreter/pipeline current.args[0]

execute unless data storage bot:io In{type:"root"} unless data storage bot:io In{type:"literal",variant:"function"} run function bot:interpreter/evaluate
execute unless data storage bot:io In{type:"root"} unless data storage bot:io In{type:"literal",variant:"function"} run data modify storage bot:interpreter/pipeline args append from storage bot:io Out
execute if data storage bot:io In{type:"root"} unless data storage bot:io In{type:"literal",variant:"function"} run data modify storage bot:interpreter/pipeline args append from storage bot:interpreter/pipeline current.args[0]

execute if data storage bot:interpreter/pipeline current.args[0] unless data storage bot:io In{type:"literal",variant:"function"} run data remove storage bot:interpreter/pipeline current.args[0]

execute if data storage bot:interpreter/pipeline current.args[0] unless data storage bot:io In{type:"literal",variant:"function"} run function bot:interpreter/pipeline/decode/args/loop
