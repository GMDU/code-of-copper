data remove storage bot:parser/expression variant
execute if data storage bot:parser {current:"0"} run data modify storage bot:parser/expression variant set value "integer"
execute if data storage bot:parser {current:"1"} run data modify storage bot:parser/expression variant set value "integer"
execute if data storage bot:parser {current:"2"} run data modify storage bot:parser/expression variant set value "integer"
execute if data storage bot:parser {current:"3"} run data modify storage bot:parser/expression variant set value "integer"
execute if data storage bot:parser {current:"4"} run data modify storage bot:parser/expression variant set value "integer"
execute if data storage bot:parser {current:"5"} run data modify storage bot:parser/expression variant set value "integer"
execute if data storage bot:parser {current:"6"} run data modify storage bot:parser/expression variant set value "integer"
execute if data storage bot:parser {current:"7"} run data modify storage bot:parser/expression variant set value "integer"
execute if data storage bot:parser {current:"8"} run data modify storage bot:parser/expression variant set value "integer"
execute if data storage bot:parser {current:"9"} run data modify storage bot:parser/expression variant set value "integer"
execute if data storage bot:parser {current:"\""} run data modify storage bot:parser/expression variant set value "string"
execute if data storage bot:parser {current:"["} run data modify storage bot:parser/expression variant set value "array"
execute if data storage bot:parser {current:"{"} run data modify storage bot:parser/expression variant set value "object"

execute unless data storage bot:parser/expression variant unless data storage bot:parser {current:" "} run data modify storage bot:parser raise set value "Expression missing valid literal!"
execute if data storage bot:parser/expression variant run function bot:parser/expression/set_literal