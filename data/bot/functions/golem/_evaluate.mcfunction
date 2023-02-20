scoreboard players set .type bot.execution.variables 0
data modify storage bot:io Out set value {type: "undefined", value: undefined}
data modify storage bot:variables CurrentEvaluation set from storage bot:variables stack[-1]

execute if data storage bot:variables CurrentEvaluation{type:"literal",variant:"integer"} run function bot:golem/evaluate/integer
execute if data storage bot:variables CurrentEvaluation{type:"literal",variant:"string"} run function bot:golem/evaluate/string
execute if data storage bot:variables CurrentEvaluation{type:"literal",variant:"regex"} run function bot:golem/evaluate/regex
execute if data storage bot:variables CurrentEvaluation{type:"literal",variant:"variable"} run function bot:golem/evaluate/variable
execute if data storage bot:variables CurrentEvaluation{type:"literal",variant:"array"} run function bot:golem/evaluate/array
execute if data storage bot:variables CurrentEvaluation{type:"literal",variant:"object"} run function bot:golem/evaluate/object
execute if data storage bot:variables CurrentEvaluation{type:"expression"} run function bot:golem/evaluate/expression

data remove storage bot:variables stack[-1]
data remove storage bot:variables CurrentEvaluation
