execute if data storage bot:interpreter evaluate.stack[-1].metadata.open run function bot:interpreter/evaluate/function/builtin/find/open
execute unless data storage bot:interpreter evaluate.stack[-1].metadata.open run function bot:interpreter/evaluate/function/builtin/find/before

execute unless data storage bot:interpreter evaluate.stack[-1].args[0].value[] run data modify storage bot:api/interpreter/function execute.return set value {type: "undefined", value: false}
