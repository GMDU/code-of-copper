execute unless data storage bot:interpreter evaluate.stack[-1].metadata.return run function bot:interpreter/evaluate/function/builtin/filter/before
execute if data storage bot:interpreter evaluate.current.metadata.return run function bot:interpreter/evaluate/function/builtin/filter/open

execute unless data storage bot:interpreter evaluate.stack[-1].args[0].value[] run data modify storage bot:api/interpreter/function execute.return set from storage bot:interpreter evaluate.stack[-1].metadata.return
execute unless data storage bot:interpreter evaluate.stack[-1].args[0].value[] run return -1

function bot:interpreter/evaluate/function/builtin/filter/set_proc
