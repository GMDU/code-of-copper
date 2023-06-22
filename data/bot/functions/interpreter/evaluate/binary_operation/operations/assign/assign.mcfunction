data modify storage bot:interpreter evaluate.assign.name set from storage bot:interpreter evaluate.stack[-1].a.value
data modify storage bot:interpreter evaluate.assign.value set from storage bot:interpreter evaluate.stack[-1].b_evaluated

function bot:interpreter/evaluate/binary_operation/operations/assign/set

data modify storage bot:interpreter evaluate.binary_operation.result set from storage bot:interpreter/evaluate stack[-1].b_evaluated