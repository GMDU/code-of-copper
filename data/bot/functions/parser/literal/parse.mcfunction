data modify storage bot:parser/literal current set from storage bot:parser stack[-1]
execute if data storage bot:parser/literal {current:{variant:"string"}} run function bot:parser/literal/string/parse
execute if data storage bot:parser/literal {current:{variant:"integer"}} run function bot:parser/literal/integer/parse
execute if data storage bot:parser/literal {current:{variant:"variable"}} run function bot:parser/literal/variable/parse
execute if data storage bot:parser/literal {current:{variant:"array"}} run function bot:parser/literal/array/parse

execute if data storage bot:parser stack[-1].metadata{status:"closed"} run function bot:parser/literal/close/init