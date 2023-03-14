execute if data storage bot:parser current{value:","} run data modify storage bot:parser current.consumed set value true
execute if data storage bot:parser current{value:"}"} run data modify storage bot:parser current.consumed set value true
execute if data storage bot:parser current{value:"}"} run data modify storage bot:parser stack[-1].metadata.status set value "closed"
execute unless data storage bot:parser current{consumed:true} run function bot:parser/parse/literal/object/set_key