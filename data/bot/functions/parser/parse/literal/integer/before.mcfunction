data modify storage bot:parser current.consumed set value true
execute unless data storage bot:parser current{value:" "} run data modify storage bot:parser stack[-1].metadata.status set value "open"
execute if data storage bot:parser current{value:"-"} run function bot:parser/parse/literal/integer/invert