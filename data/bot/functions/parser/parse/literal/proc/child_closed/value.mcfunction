data modify storage bot:parser stack[-1].metadata.status set value "closed"
data remove storage bot:parser parsed.metadata
data modify storage bot:parser stack[-1].value set from storage bot:parser parsed
