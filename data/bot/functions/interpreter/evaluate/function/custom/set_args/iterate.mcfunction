data modify storage bot:interpreter evaluate.variable.name set from storage bot:interpreter temp.parameters[0]
data modify storage bot:interpreter evaluate.variable.value set from storage bot:interpreter evaluate.stack[-1].args[0]

function bot:interpreter/evaluate/instruction/execute/assign/assign

data remove storage bot:interpreter temp.parameters[0]
data remove storage bot:interpreter evaluate.stack[-1].args[0]

execute if data storage bot:interpreter evaluate.stack[-1].args[] run function bot:interpreter/evaluate/function/custom/set_args/iterate
