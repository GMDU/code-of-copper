data modify storage bot:api/interpreter/function execute.return set value {type: "literal", variant: "string", value: []}
data modify storage bot:api/interpreter/function execute.return.value append from storage bot:interpreter evaluate.stack[-1].args[0].value[0]
