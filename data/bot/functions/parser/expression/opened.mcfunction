data modify storage bot:parser stack[-1].operation set value "add"
execute unless data storage bot:parser consumed run function bot:parser/expression/parse