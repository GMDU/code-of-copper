data remove storage bot:parser parsed.metadata

data modify storage bot:parser stack[-1].expression set from storage bot:parser parsed
function bot:parser/common/close