data modify storage bot:parser/instruction current set from storage bot:parser stack[-1].metadata.parameters[0]
data remove storage bot:parser stack[-1].metadata.parameters[0]
data modify storage bot:parser stack append from storage bot:parser/instruction current