data modify storage bot:interpreter evaluate.variable.name set from storage bot:interpreter evaluate.stack[-1].evaluated_args[0]
data modify storage bot:interpreter evaluate.variable.value set from storage bot:interpreter evaluate.stack[-1].evaluated_args[1]
function bot:interpreter/evaluate/instruction/execute/assign/assign