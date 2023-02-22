execute if data storage bot:interpreter/evaluate expressionStack[-1].expressionValue{type:"integer"} run function bot:golem/evaluate/expression/operations/add/integer
execute if data storage bot:interpreter/evaluate expressionStack[-1].expressionValue{type:"string"} run function bot:golem/evaluate/expression/operations/add/string
execute if data storage bot:interpreter/evaluate expressionStack[-1].expressionValue{type:"array"} run function bot:golem/evaluate/expression/operations/add/array
execute if data storage bot:interpreter/evaluate expressionStack[-1].expressionValue{type:"object"} run function bot:golem/evaluate/expression/operations/add/object
