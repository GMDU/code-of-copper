data modify storage bot:parser parent set from storage bot:parser stack[-1]
tellraw @s [{"text":"open "},{"storage":"bot:parser","nbt":"parent.type"}]
execute if data storage bot:parser {parent:{type:"root"}} run function bot:parser/root/opened
execute if data storage bot:parser {parent:{type:"instruction"}} run function bot:parser/instruction/opened
execute if data storage bot:parser {parent:{type:"expression"}} run function bot:parser/expression/opened
execute if data storage bot:parser {parent:{type:"literal"}} run function bot:parser/literal/opened