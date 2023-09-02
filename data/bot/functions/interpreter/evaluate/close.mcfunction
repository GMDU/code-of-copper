data modify storage bot:interpreter evaluate.result set from storage bot:interpreter evaluate.stack[-1]
data remove storage bot:interpreter evaluate.result.metadata
data remove storage bot:interpreter evaluate.result.parameters
data remove storage bot:interpreter evaluate.stack[-1]
data remove storage bot:interpreter evaluate.current