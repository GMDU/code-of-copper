data remove storage bot:parser parsed.metadata
execute if data storage bot:parser stack[-1].metadata{status:"open_value"} run data modify storage bot:parser stack[-1].metadata.pair.key set from storage bot:parser parsed
execute if data storage bot:parser stack[-1].metadata{status:"open_key"} run data modify storage bot:parser stack[-1].metadata.pair.value set from storage bot:parser parsed
execute if data storage bot:parser stack[-1].metadata{status:"open_key"} run data modify storage bot:parser stack[-1].value append from storage bot:parser stack[-1].metadata.pair