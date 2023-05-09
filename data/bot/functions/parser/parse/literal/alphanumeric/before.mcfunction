execute if data storage bot:parser stack[-1].metadata.close run function bot:parser/close/check
execute if data storage bot:parser stack[-1].metadata.close{closed:true} run data modify storage bot:parser stack[-1].metadata.status set value "closed"
execute unless data storage bot:parser stack[-1].metadata.close{closed:true} run function bot:parser/parse/literal/alphanumeric/filter