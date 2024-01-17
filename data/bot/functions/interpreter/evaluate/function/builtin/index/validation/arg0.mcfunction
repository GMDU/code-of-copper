data modify storage bot:interpreter temp.function.arg set from storage bot:interpreter evaluate.stack[-1].args[0]
execute if data storage bot:interpreter temp.function.arg{type:"literal", variant:"array"} run data modify storage bot:interpreter evaluate.stack[-1].metadata.type set value "array"
execute if data storage bot:interpreter temp.function.arg{type:"literal", variant:"string"} run data modify storage bot:interpreter evaluate.stack[-1].metadata.type set value "string"
