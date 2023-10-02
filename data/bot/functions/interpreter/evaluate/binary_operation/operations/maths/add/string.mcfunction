execute unless data storage bot:interpreter evaluate.stack[-1].b{type:"literal",variant:"string"} run data modify storage bot:interpreter error set value '["TypeError: Literal string cannot be coerced to ",{"storage":"bot:interpreter","nbt":"evaluate.stack[-1].b.variant"},"."'
execute unless data storage bot:interpreter evaluate.stack[-1].b{type:"literal",variant:"string"} run return -1

data modify storage bot:interpreter evaluate.operation.result set from storage bot:interpreter evaluate.stack[-1].a
data modify storage bot:interpreter evaluate.operation.result.value append from storage bot:interpreter evaluate.stack[-1].b.value[]