data remove storage bot:parser parsed.metadata
execute if data storage bot:parser parsed{type:"literal",variant:"alphanumeric"} run function bot:parser/parse/expression/child_closed/alphanumeric

execute if data storage bot:parser stack[-1].metadata{has_prefix:true} run function bot:parser/parse/expression/child_closed/has_prefix

data modify storage bot:parser stack[-1].value append from storage bot:parser parsed
data modify storage bot:parser stack[-1].metadata.status set value "close_or_operate"