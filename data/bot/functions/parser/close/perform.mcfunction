data modify storage bot:parser parsed set from storage bot:parser stack[-1]
data remove storage bot:parser stack[-1]
data modify storage bot:parser close set value false

data modify storage bot:parser parent set from storage bot:parser stack[-1]

execute if data storage bot:parser parent{type:"block"} run function bot:parser/parse/block/child_closed
execute if data storage bot:parser parent{type:"expression"} run function bot:parser/parse/expression/child_closed
execute if data storage bot:parser parent{type:"instruction"} run function bot:parser/parse/instruction/child_closed
execute if data storage bot:parser parent{type:"literal"} run function bot:parser/parse/literal/child_closed

data remove storage bot:parser parsed