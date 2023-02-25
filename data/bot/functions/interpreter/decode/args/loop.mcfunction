data modify storage bot:io In set from storage bot:interpreter/pipeline current.args[0]

execute unless data storage bot:io In{type:"root"} run function bot:interpreter/evaluate
execute unless data storage bot:io In{type:"root"} run data modify storage bot:interpreter/pipeline args append from storage bot:io Out
execute if data storage bot:io In{type:"root"} run data modify storage bot:interpreter/pipeline args append from storage bot:interpreter/pipeline current.args[0]

data remove storage bot:interpreter/pipeline current.args[0]

execute if data storage bot:interpreter/pipeline current.args[0] run function bot:interpreter/decode/args/loop
