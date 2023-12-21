data remove storage bot:parser stack[-1].metadata.has_prefix
data remove storage bot:parser stack[-1].metadata.operator
execute if data storage bot:parser current{flags:["whitespace"]} run data modify storage bot:parser current.consumed set value true
execute unless data storage bot:parser current{flags:["whitespace"]} run data modify storage bot:parser stack[-1].metadata.status set value "open"
