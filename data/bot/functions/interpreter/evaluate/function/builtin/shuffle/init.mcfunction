function bot:interpreter/evaluate/function/builtin/map/validation/arg0
execute if data storage bot:interpreter error run return -1

data modify storage bot:api/interpreter/function execute.return set value {type: "literal", variant: "array", value: []}

execute if data storage bot:interpreter evaluate.stack[-1].args[0].value[] run function bot:interpreter/evaluate/function/builtin/shuffle/iterate