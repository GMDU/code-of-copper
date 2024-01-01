function bot:interpreter/evaluate/function/builtin/map/validation/arg0
function bot:interpreter/evaluate/function/builtin/map/validation/arg1
execute if data storage bot:interpreter error run return -1

data modify storage bot:api/interpreter/function execute.return set value {type: "literal", variant: "array", value: []}
data modify storage bot:interpreter evaluate.stack[-1].metadata.return set value {type: "literal", variant: "array", value: []}