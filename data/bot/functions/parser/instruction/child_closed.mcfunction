data remove storage bot:parser parsed.metadata
data modify storage bot:parser stack[-1].args append from storage bot:parser parsed
tellraw @s {"storage":"bot:parser","nbt":"stack[-1].metadata.parameters[]"}
function bot:parser/instruction/parse