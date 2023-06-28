data remove storage bot:parser parsed.metadata
data modify storage bot:parser stack[-1].id set from storage bot:parser parsed.value
data modify storage bot:parser stack[-1].parameters set from storage bot:parser parsed.parameters
data modify storage bot:parser stack[-1].metadata.status set value "closed"