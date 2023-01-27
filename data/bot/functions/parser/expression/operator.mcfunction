data remove storage bot:parser/expression operator
execute if data storage bot:parser {current:"+"} run data modify storage bot:parser/expression operator set value "add"
execute if data storage bot:parser {current:"-"} run data modify storage bot:parser/expression operator set value "subtract"
execute if data storage bot:parser {current:"*"} run data modify storage bot:parser/expression operator set value "multiply"
execute if data storage bot:parser {current:"/"} run data modify storage bot:parser/expression operator set value "divide"
execute if data storage bot:parser {current:"="} run data modify storage bot:parser/expression operator set value "equal"
execute if data storage bot:parser {current:">"} run data modify storage bot:parser/expression operator set value "greater"
execute if data storage bot:parser {current:"<"} run data modify storage bot:parser/expression operator set value "lesser"