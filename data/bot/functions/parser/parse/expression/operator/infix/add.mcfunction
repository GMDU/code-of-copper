data modify storage bot:parser stack[-1].value append from storage bot:parser stack[-1].metadata.operator
data remove storage bot:parser stack[-1].metadata.registry
data remove storage bot:parser stack[-1].metadata.operator
data modify storage bot:parser stack[-1].metadata merge value {status:"prefix",no_matches:false}