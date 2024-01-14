data modify storage bot:api/interpreter/function execute.return set value {type: "literal", variant: "boolean", value: false}

execute if data storage bot:interpreter evaluate.stack[-1].args[1].value[] run function bot:interpreter/evaluate/function/builtin/prefix/iterate

execute unless data storage bot:interpreter evaluate.stack[-1].args[1].value[] run data modify storage bot:api/interpreter/function execute.return.value set value true
