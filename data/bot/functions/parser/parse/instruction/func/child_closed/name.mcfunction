data modify storage bot:parser parsed.variant set value "string"
data modify storage bot:parser stack[-1].name set from storage bot:parser parsed
data modify storage bot:parser stack[-1].metadata.status set value "brackets"
execute unless data storage bot:parser current{value:"("} run data modify storage bot:parser current.consumed set value true