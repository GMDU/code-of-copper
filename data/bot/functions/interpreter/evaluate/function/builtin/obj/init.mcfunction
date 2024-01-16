function bot:interpreter/evaluate/function/builtin/obj/validation/arg0
execute if data storage bot:interpreter error run return -1

data remove storage bot:interpreter temp.args

data modify storage bot:api/interpreter/function execute.return set value {type: "literal", variant: "object", value: []}

execute if data storage bot:interpreter evaluate.stack[-1].metadata{type: "object"} run data modify storage bot:api/interpreter/function execute.return.value set from storage bot:interpreter evaluate.stack[-1].args[0].value
execute if data storage bot:interpreter evaluate.stack[-1].metadata{type: "array"} if data storage bot:api/interpreter/function execute.args[0].value[0].value[] run function bot:interpreter/evaluate/function/builtin/obj/iterate