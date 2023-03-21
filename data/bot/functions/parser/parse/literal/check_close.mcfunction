execute if data storage bot:parser stack[-1].metadata.close.type if data storage bot:parser current{value:["whitespace"]} run data modify storage bot:parser current.consumed set value true
execute if data storage bot:parser stack[-1].metadata.close.type unless data storage bot:parser current{consumed:true} run function bot:parser/parse/literal/close

execute unless data storage bot:parser stack[-1].metadata.close.type run data modify storage bot:parser close set value true