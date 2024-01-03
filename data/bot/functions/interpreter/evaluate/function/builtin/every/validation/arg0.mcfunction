data modify storage bot:interpreter temp.function.arg set from storage bot:interpreter evaluate.stack[-1].args[0]
execute if data storage bot:interpreter temp.function.arg{type:"literal", variant:"array"} run data modify storage bot:interpreter evaluate.stack[-1].metadata.type set value "array"

execute if data storage bot:interpreter evaluate.stack[-1].metadata.type run return -1

data modify storage bot:interpreter error set value '{"text": "RuntimeError: Invalid first argument in function \'every\', expected type \'array\'."}'