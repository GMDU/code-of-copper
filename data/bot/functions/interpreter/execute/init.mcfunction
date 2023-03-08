execute if data storage bot:interpreter/execution current{type:"instruction"} on vehicle run function bot:interpreter/execute/instruction
execute if data storage bot:interpreter/execution current{type:"literal",variant:"function"} run function bot:interpreter/execute/function_call
execute if data storage bot:interpreter/execution current{type:"function"} run function bot:interpreter/execute/function_definition

data remove storage bot:interpreter/execution current

function bot:interpreter/align
