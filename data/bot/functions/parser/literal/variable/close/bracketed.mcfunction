data modify storage bot:parser stack[-1].metadata.status set value "closed"
data remove storage bot:parser stack[-1].metadata.bracketed
data modify storage bot:parser consumed set value true