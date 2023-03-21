data remove storage bot:parser parsed.metadata
data modify storage bot:parser stack[-1].args append from storage bot:parser parsed
execute if data storage bot:parser current{value:")"} run data modify storage bot:parser stack[-1].metadata.status set value "closed"
data modify storage bot:parser current.consumed set value true