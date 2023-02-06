execute if data storage bot:parser {current:")"} run data modify storage bot:parser stack[-1].metadata.status set value "closed"
execute if data storage bot:parser {current:")"} run data remove storage bot:parser stack[-1].metadata.bracketed
data modify storage bot:parser consumed set value true