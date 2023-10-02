execute unless data storage bot:interpreter evaluate.stack[-1].b{type:"literal",variant:"object"} run data modify storage bot:interpreter error set value '["TypeError: Literal object cannot be coerced to ",{"storage":"bot:interpreter","nbt":"evaluate.stack[-1].b.variant"},"."'
execute unless data storage bot:interpreter evaluate.stack[-1].b{type:"literal",variant:"object"} run return -1

data modify storage bot:interpreter evaluate.operation.result set from storage bot:interpreter evaluate.stack[-1].a
data modify storage bot:interpreter evaluate.operation.result.original_value set value []
function bot:interpreter/evaluate/binary_operation/operations/maths/add/object/iterate