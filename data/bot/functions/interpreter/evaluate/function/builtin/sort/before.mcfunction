function bot:interpreter/evaluate/function/builtin/sort/validation/arg0
function bot:interpreter/evaluate/function/builtin/sort/validation/arg1
execute if data storage bot:interpreter error run return -1

data remove storage bot:interpreter evaluate.return_value
data modify storage bot:interpreter evaluate.stack[-1].metadata.status set value "open"