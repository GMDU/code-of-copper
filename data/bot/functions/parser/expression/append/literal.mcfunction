data remove storage bot:parser parsed.metadata

data modify storage bot:parser stack[-1].value set from storage bot:parser parsed
execute unless data storage bot:parser consumed run function bot:parser/expression/parse