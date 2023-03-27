data modify storage bot:io Out set value {type: "undefined", value: undefined}
data modify storage bot:interpreter/evaluate CurrentEvaluation set from storage bot:interpreter/evaluate stack[-1]

execute if data storage bot:interpreter/evaluate CurrentEvaluation{type:"literal",variant:"integer"} run function bot:interpreter/evaluate/integer
execute if data storage bot:interpreter/evaluate CurrentEvaluation{type:"literal",variant:"string"} run function bot:interpreter/evaluate/string
execute if data storage bot:interpreter/evaluate CurrentEvaluation{type:"literal",variant:"regex"} run function bot:interpreter/evaluate/regex
execute if data storage bot:interpreter/evaluate CurrentEvaluation{type:"literal",variant:"variable"} run function bot:interpreter/evaluate/variable
execute if data storage bot:interpreter/evaluate CurrentEvaluation{type:"literal",variant:"array"} run function bot:interpreter/evaluate/array
execute if data storage bot:interpreter/evaluate CurrentEvaluation{type:"literal",variant:"object"} run function bot:interpreter/evaluate/object
execute if data storage bot:interpreter/evaluate CurrentEvaluation{type:"literal",variant:"function"} run function bot:interpreter/evaluate/function
execute if data storage bot:interpreter/evaluate CurrentEvaluation{type:"expression"} run function bot:interpreter/evaluate/expression
execute if data storage bot:interpreter/evaluate CurrentEvaluation{type:"binary_operation"} run function bot:interpreter/evaluate/binary_operation
execute if data storage bot:interpreter/evaluate CurrentEvaluation{type:"delayed"} run function bot:interpreter/evaluate/delayed

function bot:interpreter/dev_mode/init

data remove storage bot:interpreter/evaluate stack[-1]
data remove storage bot:interpreter/evaluate CurrentEvaluation
