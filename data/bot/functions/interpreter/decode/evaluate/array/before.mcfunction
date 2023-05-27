data modify storage bot:interpreter evaluate.stack[-1].metadata.open set value true
data modify storage bot:interpreter evaluate.stack[-1].evaluated_value set value []
data modify storage bot:interpreter evaluate.stack[-1].metadata.stack set from storage bot:interpreter evaluate.stack[-1].value

data modify storage bot:interpreter evaluate.next set from storage bot:interpreter evaluate.stack[-1].metadata.stack[0]