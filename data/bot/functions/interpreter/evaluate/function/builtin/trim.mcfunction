data modify storage bot:api/interpreter/function execute.return set value {type: "literal", variant: "string", value: []}
data modify storage bot:api/interpreter/function execute.return.value append from storage bot:interpreter evaluate.stack[-1].args[0].value[]

execute if data storage bot:api/interpreter/function execute.return.value[] run function bot:interpreter/evaluate/function/builtin/ltrim/iterate
execute if data storage bot:api/interpreter/function execute.return.value[] run function bot:interpreter/evaluate/function/builtin/rtrim/iterate