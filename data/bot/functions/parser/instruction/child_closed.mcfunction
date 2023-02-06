data modify storage bot:parser consumed set value true
data remove storage bot:parser parsed.metadata
data modify storage bot:parser stack[-1].args append from storage bot:parser parsed
function bot:parser/instruction/parse