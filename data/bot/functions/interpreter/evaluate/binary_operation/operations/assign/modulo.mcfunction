function bot:interpreter/evaluate/binary_operation/operations/maths/modulo

data modify storage bot:interpreter evaluate.assign.name set from storage bot:interpreter evaluate.stack[-1].a.value
data modify storage bot:interpreter evaluate.assign.value set from storage bot:interpreter evaluate.binary_operation.result

function bot:interpreter/evaluate/binary_operation/operations/assign/set