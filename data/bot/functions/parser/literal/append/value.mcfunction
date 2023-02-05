data modify storage bot:parser stack[-1].value append from storage bot:parser parsed
execute unless data storage bot:parser consumed run function bot:parser/literal/parse