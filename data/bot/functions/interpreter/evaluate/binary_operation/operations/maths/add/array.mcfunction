execute unless data storage bot:interpreter evaluate.stack[-1].b{type:"literal",variant:"array"} run data modify storage bot:interpreter error set value '["TypeError: Literal array cannot be coerced to ",{"storage":"bot:interpreter","nbt":"evaluate.stack[-1].b.variant"},"."'
execute unless data storage bot:interpreter evaluate.stack[-1].b{type:"literal",variant:"array"} run return -1

data modify storage bot:interpreter evaluate.binary_operation.result set from storage bot:interpreter evaluate.stack[-1].a
data modify storage bot:interpreter evaluate.binary_operation.result.evaluated_value append from storage bot:interpreter evaluate.stack[-1].b.evaluated_value[]
data modify storage bot:interpreter evaluate.binary_operation.result.value append from storage bot:interpreter evaluate.stack[-1].b.value[]