execute unless data storage bot:parser stack[-1].operation run data modify storage bot:parser stack[-1].operation set value "add"
execute unless data storage bot:parser stack[-1].value run function bot:parser/expression/type
execute if data storage bot:parser stack[-1].value unless data storage bot:parser {current:" "} run function bot:parser/expression/close_or_operate