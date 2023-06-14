data modify storage bot:interpreter evaluate.stack[-1].metadata.status set value "open"
data modify storage bot:interpreter evaluate.stack[-1].evaluated_args set value []
data modify storage bot:interpreter evaluate.stack[-1].metadata.stack set from storage bot:interpreter evaluate.stack[-1].args

data modify storage bot:interpreter evaluate.next set from storage bot:interpreter evaluate.stack[-1].metadata.stack[0]