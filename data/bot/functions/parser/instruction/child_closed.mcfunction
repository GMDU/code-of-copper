data remove storage bot:parser parsed.metadata
data modify storage bot:parser stack[-1].args append from storage bot:parser parsed
execute unless data storage bot:parser stack[-1].metadata.parameters[{}] run function bot:parser/common/close