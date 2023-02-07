data remove storage bot:parser parsed.metadata
data remove storage bot:parser parsed.filter
data modify storage bot:parser stack[-1].value append from storage bot:parser parsed
data modify storage bot:parser consumed set value true