data modify storage bot:api/interpreter/function execute.return set value {type: "literal", variant: "string", value: []}

data remove storage bot:interpreter temp.last

execute if data storage bot:interpreter evaluate.stack[-1].args[0].value[] run function bot:interpreter/evaluate/function/builtin/squeeze/iterate