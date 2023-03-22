execute unless data storage bot:parser stack[-1].metadata.status run function bot:parser/parse/expression/before
execute if data storage bot:parser stack[-1].metadata{status:"close_or_operate"} run function bot:parser/parse/expression/close_or_operate

execute unless data storage bot:parser stack[-1].metadata{status:"close_or_operate"} unless data storage bot:parser current{value:" "} run function bot:parser/parse/expression/parse
execute unless data storage bot:parser stack[-1].metadata{status:"close_or_operate"} if data storage bot:parser current{value:" "} run data modify storage bot:parser current.consumed set value true