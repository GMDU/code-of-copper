execute if data storage bot:parser current{flags:["whitespace"]} run data modify storage bot:parser current.consumed set value true
execute unless data storage bot:parser stack[-1].metadata.status unless data storage bot:parser current{consumed:true} run function bot:parser/parse/literal/object/before

execute if data storage bot:parser stack[-1].metadata{status:"key"} unless data storage bot:parser current{consumed:true} run function bot:parser/parse/literal/object/key
execute if data storage bot:parser stack[-1].metadata{status:"value"} unless data storage bot:parser current{consumed:true} run function bot:parser/parse/literal/object/value