execute if data storage bot:parser {current:"("} run data modify storage bot:parser consumed set value true
execute if data storage bot:parser {current:"("} run data modify storage bot:parser stack[-1].metadata.bracketed set value true
execute unless data storage bot:parser {current:"("} run data modify storage bot:parser stack[-1].metadata.bracketed set value false