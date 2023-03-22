function bot:parser/close/check

execute if data storage bot:parser stack[-1].metadata.close{closed:true} run data modify storage bot:parser close set value true

data modify storage bot:parser current.consumed set value true

execute unless data storage bot:parser stack[-1].metadata.close{closed:true} unless data storage bot:parser current{value:" "} run data modify storage bot:parser raise set value "Error closing literal."