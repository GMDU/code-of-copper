data modify storage bot:parser/expression current set from storage bot:parser stack[-1]
execute if data storage bot:parser {current:" "} run data modify storage bot:parser consumed set value true
execute if data storage bot:parser/expression current.value unless data storage bot:parser {current:" "} run function bot:parser/expression/close_or_operate
execute unless data storage bot:parser/expression current.value run function bot:parser/expression/type