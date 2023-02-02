data modify storage bot:parser/parse parent set from storage bot:parser stack[-1]

execute if data storage bot:parser/parse {parent:{type:"root"}} run function bot:parser/root/parse
execute if data storage bot:parser/parse {parent:{type:"instruction"}} run function bot:parser/instruction/parse
execute if data storage bot:parser/parse {parent:{type:"expression"}} run function bot:parser/expression/parse
execute if data storage bot:parser/parse {parent:{type:"literal"}} run function bot:parser/literal/parse