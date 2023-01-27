data modify storage bot:parser parent set from storage bot:parser stack[-1]

execute if data storage bot:parser {parent:{type:"root"}} run function bot:parser/root/parse
execute if data storage bot:parser {parent:{type:"instruction"}} run function bot:parser/instruction/parse
execute if data storage bot:parser {parent:{type:"expression"}} run function bot:parser/expression/parse
execute if data storage bot:parser {parent:{type:"literal"}} run function bot:parser/literal/parse