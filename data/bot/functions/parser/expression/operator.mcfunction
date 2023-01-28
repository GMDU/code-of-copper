data remove storage bot:parser/expression operator
execute if data storage bot:parser {current:"+"} run data modify storage bot:parser/expression operator set value "add"
execute if data storage bot:parser {current:"-"} run data modify storage bot:parser/expression operator set value "subtract"
execute if data storage bot:parser {current:"*"} run data modify storage bot:parser/expression operator set value "multiply"
execute if data storage bot:parser {current:"/"} run data modify storage bot:parser/expression operator set value "divide"
execute if data storage bot:parser {current:"%"} run data modify storage bot:parser/expression operator set value "modulo"
execute if data storage bot:parser {current:"="} run data modify storage bot:parser/expression operator set value "equals"
execute if data storage bot:parser {current:">"} run data modify storage bot:parser/expression operator set value "greaterThan"
execute if data storage bot:parser {current:"<"} run data modify storage bot:parser/expression operator set value "lessThan"