data remove storage bot:parser parsed.metadata
execute unless data storage bot:parser stack[-1].parameters run data modify storage bot:parser stack[-1].parameters set value []

data modify storage bot:parser current.consumed set value true
execute if data storage bot:parser parsed{type:"literal",variant:"alphanumeric"} run function bot:parser/parse/literal/child_closed/dot_parameter

data modify storage bot:parser stack[-1].parameters append from storage bot:parser parsed