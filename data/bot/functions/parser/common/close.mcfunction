data remove storage bot:parser parent
data modify storage bot:parser parsed set from storage bot:parser stack[-1]
data remove storage bot:parser stack[-1]

data modify storage bot:parser parent set from storage bot:parser stack[-1]

execute unless data storage bot:parser parent run data modify storage bot:parser output set from storage bot:parser parsed
execute if data storage bot:parser {parent:{type:"root"}} run function bot:parser/root/child_closed
execute if data storage bot:parser {parent:{type:"instruction"}} run function bot:parser/instruction/child_closed
execute if data storage bot:parser {parent:{type:"expression"}} run function bot:parser/expression/child_closed

data remove storage bot:parser parsed