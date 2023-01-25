data modify storage bot:parser/literal current set from storage bot:parser stack[-1]
execute unless data storage bot:parser stack[-1].values run data modify storage bot:parser stack[-1].values set value []

execute if data storage bot:parser/literal {current:{variant:"string"}} run function bot:parser/literal/string/parse