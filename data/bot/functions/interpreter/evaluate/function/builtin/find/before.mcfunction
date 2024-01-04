function bot:interpreter/evaluate/function/builtin/find/validation/arg0
function bot:interpreter/evaluate/function/builtin/find/validation/arg1
execute if data storage bot:interpreter error run return -1

data modify storage bot:interpreter evaluate.stack[-1].metadata.open set value true
