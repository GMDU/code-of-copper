data modify storage bot:interpreter check_equivelence.a set from storage bot:interpreter evaluate.stack[-1].a
data modify storage bot:interpreter check_equivelence.b set from storage bot:interpreter evaluate.stack[-1].b
function bot:interpreter/utils/check_equivelence

data modify storage bot:interpreter evaluate.operation.result set value {type: "literal", variant:"boolean", value: false}
execute if data storage bot:interpreter check_equivelence{result:false} run data modify storage bot:interpreter evaluate.operation.result set value {type: "literal", variant:"boolean", value: true}
