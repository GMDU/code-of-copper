execute if data storage bot:interpreter evaluate.stack[-1].metadata.return run function bot:interpreter/evaluate/function/builtin/filter/open
execute unless data storage bot:interpreter evaluate.stack[-1].metadata.return run function bot:interpreter/evaluate/function/builtin/filter/before

execute unless data storage bot:interpreter evaluate.stack[-1].args[0].value[] run data modify storage bot:api/interpreter/function execute.return set from storage bot:interpreter evaluate.stack[-1].metadata.return
