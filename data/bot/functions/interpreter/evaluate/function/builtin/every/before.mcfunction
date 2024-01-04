function bot:interpreter/evaluate/function/builtin/every/validation/arg0
function bot:interpreter/evaluate/function/builtin/every/validation/arg1
execute if data storage bot:interpreter error run return -1

data modify storage bot:interpreter evaluate.stack[-1].metadata.return set value {type: "literal", variant: "boolean", value: true}
