data modify storage bot:parser parsed.variant set value "string"
execute if data storage bot:parser parsed.value[] run data modify storage bot:parser stack[-1].parameters append from storage bot:parser parsed
execute if data storage bot:parser current{value:")"} run data modify storage bot:parser stack[-1].metadata.status set value "value"
data modify storage bot:parser current.consumed set value true