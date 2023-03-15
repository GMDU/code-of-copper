execute if data storage bot:parser stack[-2] run data modify storage bot:parser close set value true
execute unless data storage bot:parser stack[-2] run data modify storage bot:parser output set from storage bot:parser stack[-1]
execute unless data storage bot:parser stack[-2] run data remove storage bot:parser output.metadata
data modify storage bot:parser current.consumed set value true