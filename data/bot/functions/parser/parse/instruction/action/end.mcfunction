data remove storage bot:parser stack[-1]
execute if data storage bot:parser stack[-1].metadata.close{type:"end"} run data modify storage bot:parser close set value true
execute unless data storage bot:parser stack[-1].metadata.close{type:"end"} run data modify storage bot:parser raise set value "Unexpected 'end' keyword in block."