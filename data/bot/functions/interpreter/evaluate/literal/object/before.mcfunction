data modify storage bot:interpreter evaluate.stack[-1].metadata.status set value "open"
data modify storage bot:interpreter evaluate.stack[-1].original_value set from storage bot:interpreter evaluate.stack[-1].value
data modify storage bot:interpreter evaluate.stack[-1].value set value []
data modify storage bot:interpreter evaluate.stack[-1].metadata.stack set from storage bot:interpreter evaluate.stack[-1].original_value

data modify storage bot:interpreter evaluate.next set from storage bot:interpreter evaluate.stack[-1].metadata.stack[0].value