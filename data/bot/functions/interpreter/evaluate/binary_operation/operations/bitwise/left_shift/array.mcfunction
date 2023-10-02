data modify storage bot:interpreter evaluate.operation.result set from storage bot:interpreter evaluate.stack[-1].a
data modify storage bot:interpreter evaluate.operation.result.value append from storage bot:interpreter evaluate.stack[-1].b
data modify storage bot:interpreter evaluate.operation.result.original_value append from storage bot:interpreter evaluate.stack[-1].b_original

execute unless data storage bot:interpreter evaluate.stack[-1].a_original{type:"literal",variant:"variable"} run return -1

data modify storage bot:interpreter evaluate.assign.name set from storage bot:interpreter evaluate.stack[-1].a_original.value
data modify storage bot:interpreter evaluate.assign.value set from storage bot:interpreter evaluate.operation.result

function bot:interpreter/evaluate/binary_operation/operations/assign/set