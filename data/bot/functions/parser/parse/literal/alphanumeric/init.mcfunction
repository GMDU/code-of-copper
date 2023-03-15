execute unless data storage bot:parser stack[-1].value[] unless data storage bot:parser current{value:" "} run function bot:parser/parse/literal/alphanumeric/before
execute unless data storage bot:parser stack[-1].value[] if data storage bot:parser current{value:" "} run data modify storage bot:parser current.consumed set value true

execute if data storage bot:parser stack[-1].value[] unless data storage bot:parser current{consumed:true} run function bot:parser/parse/literal/alphanumeric/open/init