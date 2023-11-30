data remove storage bot:api/interpreter/function execute
data modify storage bot:api/interpreter/function execute.signature set from storage moxlib:api/data/get output
data modify storage bot:api/interpreter/function execute.args set from storage bot:interpreter evaluate.stack[-1].args

function bot:interpreter/evaluate/function/builtin/execute
execute unless data storage bot:api/interpreter/function execute.return run function #bot:api/interpreter/function/execute

data modify storage bot:interpreter evaluate.return_value set from storage bot:api/interpreter/function execute.return