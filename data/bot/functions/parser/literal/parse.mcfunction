data modify storage bot:parser/literal current set from storage bot:parser stack[-1]
execute unless data storage bot:parser stack[-1].value run data modify storage bot:parser stack[-1].value set value []

execute if data storage bot:parser/literal {current:{variant:"string"}} run function bot:parser/literal/string/parse
execute if data storage bot:parser/literal {current:{variant:"integer"}} run function bot:parser/literal/integer/parse