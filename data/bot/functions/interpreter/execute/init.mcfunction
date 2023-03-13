execute if data storage bot:interpreter/execution current{type:"instruction"} run function bot:interpreter/execute/instruction
execute if data storage bot:interpreter/execution current{type:"literal",variant:"function"} run function bot:interpreter/execute/function_call
execute if data storage bot:interpreter/execution current{type:"expression"} run function bot:interpreter/execute/expression

function bot:interpreter/dev_mode/init

data remove storage bot:interpreter/execution current

function bot:interpreter/align
