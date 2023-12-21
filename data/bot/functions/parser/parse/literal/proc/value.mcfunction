execute if data storage bot:parser current{flags:["whitespace"]} run data modify storage bot:parser current.consumed set value true
execute if data storage bot:parser current{flags:["whitespace"]} run return -1

execute if data storage bot:parser current{value:"{"} run data modify storage bot:parser current.consumed set value true
execute if data storage bot:parser current{value:"{"} run data modify storage bot:parser stack append value {type:"block",metadata:{close:{type:"single",value:"}"}}}
execute if data storage bot:parser current{value:"{"} run return -1

data modify storage bot:parser stack append value {type:"expression"}
data modify storage bot:parser stack[-1].metadata.close set from storage bot:parser stack[-2].metadata.parent_close