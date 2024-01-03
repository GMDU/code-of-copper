function bot:interpreter/evaluate/function/builtin/flat/validation/arg0
function bot:interpreter/evaluate/function/builtin/flat/validation/arg1
execute if data storage bot:interpreter error run return -1

data modify storage bot:api/interpreter/function execute.return set value {type: "literal", variant: "array", value: []}

data modify storage bot:interpreter evaluate.stack[-1].metadata.stack set value [{depth: 1}]
data modify storage bot:interpreter evaluate.stack[-1].metadata.stack[-1].value set from storage bot:interpreter evaluate.stack[-1].args[0].value

execute if data storage bot:interpreter evaluate.stack[-1].args[1] run data modify storage bot:interpreter evaluate.stack[-1].metadata.stack[-1].depth set from storage bot:interpreter evaluate.stack[-1].args[1].value

function bot:interpreter/evaluate/function/builtin/flat/iterate

execute unless data storage bot:interpreter evaluate.stack[-1].args[0].value[] run data modify storage bot:api/interpreter/function execute.return set from storage bot:interpreter evaluate.stack[-1].metadata.return