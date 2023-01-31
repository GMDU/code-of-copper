data remove storage bot:parser/expression variant
data modify storage moxlib:api/string/filter target set value ["-","0","1","2","3","4","5","6","7","8","9"]
data modify storage moxlib:api/string/filter key set from storage bot:parser current
function moxlib:api/string/filter
execute if data storage moxlib:api/string/filter {output:false} run data modify storage bot:parser/expression variant set value "integer"
execute if data storage bot:parser {current:"\""} run data modify storage bot:parser/expression variant set value "string"
execute if data storage bot:parser {current:"["} run data modify storage bot:parser/expression variant set value "array"
execute if data storage bot:parser {current:"{"} run data modify storage bot:parser/expression variant set value "object"
execute if data storage bot:parser {current:"$"} run data modify storage bot:parser/expression variant set value "variable"

execute unless data storage bot:parser/expression variant unless data storage bot:parser {current:" "} run data modify storage bot:parser raise set value '{"text":"[Expression - Literal]: Expected [0-9, \\", [, {, $], received \\"","extra":[{"nbt":"current","storage":"bot:parser"},"\\""]}'
execute if data storage bot:parser/expression variant run function bot:parser/expression/set_literal