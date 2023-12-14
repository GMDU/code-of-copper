data modify storage bot:api/interpreter/function execute.return set value {type: "literal", variant: "integer", value: 0}
execute store result storage bot:api/interpreter/function execute.return.value int 1 run data get storage bot:interpreter evaluate.stack[-1].args[0].value
