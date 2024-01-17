execute unless data storage bot:interpreter evaluate.stack[-1].args[1].value[] run function bot:interpreter/evaluate/function/builtin/arr/init
execute if data storage bot:api/interpreter/function execute.return run return -1

data remove storage bot:interpreter temp.split
data modify storage bot:api/interpreter/function execute.return set value {type: "literal", variant: "array", value: [{type: "literal", variant: "string", value: []}]}
data modify storage bot:interpreter temp.split.separator set from storage bot:interpreter evaluate.stack[-1].args[1].value

execute if data storage bot:interpreter evaluate.stack[-1].args[0].value[] run function bot:interpreter/evaluate/function/builtin/split/iterate

data modify storage bot:api/interpreter/function execute.return.value[-1].value append from storage bot:interpreter temp.split.checking[]
