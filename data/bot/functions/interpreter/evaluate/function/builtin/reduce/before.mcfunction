function bot:interpreter/evaluate/function/builtin/reduce/validation/arg0
function bot:interpreter/evaluate/function/builtin/reduce/validation/arg2
execute if data storage bot:interpreter error run return -1

data modify storage bot:interpreter evaluate.stack[-1].metadata.return set from storage bot:interpreter evaluate.stack[-1].args[1]
