data remove storage bot:parser parsed.metadata
data modify storage bot:parser stack[-1].value set from storage bot:parser parsed
execute unless data storage bot:parser {current:" "} unless data storage bot:parser {consumed:true} run function bot:parser/expression/close_or_operate