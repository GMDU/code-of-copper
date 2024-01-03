execute if data storage bot:interpreter evaluate.stack[-1].metadata.return run data modify storage bot:interpreter evaluate.stack[-1].metadata.return set from storage bot:interpreter evaluate.return_value

execute unless data storage bot:interpreter evaluate.stack[-1].metadata.return run function bot:interpreter/evaluate/function/builtin/reduce/before
execute if data storage bot:interpreter evaluate.stack[-1].args[0].value[] run function bot:interpreter/evaluate/function/builtin/reduce/open

execute unless data storage bot:interpreter evaluate.stack[-1].args[0].value[] run data modify storage bot:api/interpreter/function execute.return set from storage bot:interpreter evaluate.stack[-1].metadata.return