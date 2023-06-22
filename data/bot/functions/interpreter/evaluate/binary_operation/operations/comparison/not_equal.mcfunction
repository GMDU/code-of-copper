data modify storage bot:interpreter check_equivelence.a set from storage bot:interpreter evaluate.stack[-1].a_evaluated
data modify storage bot:interpreter check_equivelence.b set from storage bot:interpreter evaluate.stack[-1].b_evaluated
function bot:interpreter/utils/check_equivelence

execute if data storage bot:interpreter evaluate.binary_operation.result{value:true} run data modify storage bot:interpreter evaluate.binary_operation.result set value {type: "literal", variant:"boolean", value: false}
execute if data storage bot:interpreter evaluate.binary_operation.result{value:false} run data modify storage bot:interpreter evaluate.binary_operation.result set value {type: "literal", variant:"boolean", value: true}
