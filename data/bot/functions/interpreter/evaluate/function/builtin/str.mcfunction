data modify storage bot:interpreter utils.stringify.target set from storage bot:interpreter evaluate.stack[-1].args[0]

function bot:interpreter/utils/stringify/init

data modify storage bot:api/interpreter/function execute.return set value {type:"literal", variant: "string", value: []}
data modify storage bot:api/interpreter/function execute.return.value set from storage bot:interpreter utils.stringify.result