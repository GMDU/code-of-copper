data modify storage bot:interpreter temp.split.separator set from storage bot:interpreter evaluate.stack[-1].args[1].value
data modify storage bot:interpreter temp.split.checking set value []
data modify storage bot:api/interpreter/function execute.return.value append value {type: "literal", variant: "string", value: []}
