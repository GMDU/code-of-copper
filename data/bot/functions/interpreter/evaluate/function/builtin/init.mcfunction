data remove storage bot:api/interpreter/function execute
data modify storage bot:api/interpreter/function execute.signature set from storage bot:interpreter evaluate.stack[-1].value
data modify storage bot:api/interpreter/function execute.args set from storage bot:interpreter evaluate.stack[-1].args

function bot:interpreter/evaluate/function/builtin/macro with storage bot:api/interpreter/function execute.signature

data modify storage bot:interpreter evaluate.return_value set from storage bot:api/interpreter/function execute.return
