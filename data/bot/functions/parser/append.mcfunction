data modify storage bot:parser parent set from storage bot:parser stack[-1]

execute if data storage bot:parser {parent:{type:"root"}} run function bot:parser/root/append
execute if data storage bot:parser {parent:{type:"instruction"}} run function bot:parser/instruction/append
execute if data storage bot:parser {parent:{type:"expression"}} run function bot:parser/expression/append
# execute if data storage bot:parser {parent:{type:"literal"}} run function bot:parser/literal/append

data remove storage bot:parser parsed