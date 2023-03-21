execute if data storage bot:parser current{flags:["whitespace"]} run data modify storage bot:parser current.consumed set value true

execute unless data storage bot:parser stack[-1].metadata{status:"open"} unless data storage bot:parser current{consumed:true} run function bot:parser/parse/literal/array/before
execute if data storage bot:parser stack[-1].metadata{status:"open"} unless data storage bot:parser current{consumed:true} run function bot:parser/parse/literal/array/open