execute if data storage bot:parser {current:"("} run data modify storage bot:parser stack[-1].bracketed set value true
execute unless data storage bot:parser {current:"("} run data modify storage bot:parser stack[-1].bracketed set value false
execute unless data storage bot:parser {current:"("} run data modify storage bot:parser stack[-1].value append from storage bot:parser current