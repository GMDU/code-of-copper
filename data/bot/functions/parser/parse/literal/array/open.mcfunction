execute if data storage bot:parser {current:","} run data modify storage bot:parser consumed set value true
execute if data storage bot:parser {current:"]"} run data modify storage bot:parser consumed set value true
execute if data storage bot:parser {current:"]"} run data modify storage bot:parser stack[-1].metadata.status set value "closed"
execute unless data storage bot:parser current{consumed:true} run function bot:parser/parse/literal/array/set_expression