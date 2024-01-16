data modify storage bot:api/interpreter/function execute.return.value append value {type: "literal", variant: "array", value: []}
data modify storage bot:api/interpreter/function execute.return.value[-1].value append value {type: "literal", variant: "string", value: []}
data modify storage bot:api/interpreter/function execute.return.value[-1].value[-1].value set from storage bot:interpreter evaluate.stack[-1].args[0].value[0].key
data modify storage bot:api/interpreter/function execute.return.value[-1].value append from storage bot:interpreter evaluate.stack[-1].args[0].value[0].value

data remove storage bot:interpreter evaluate.stack[-1].args[0].value[0]
execute if data storage bot:interpreter evaluate.stack[-1].args[0].value[] run function bot:interpreter/evaluate/function/builtin/arr/iterate/object