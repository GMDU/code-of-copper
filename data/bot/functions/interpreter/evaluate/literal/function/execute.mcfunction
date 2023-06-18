data modify storage bot:interpreter evaluate.stack[-1].metadata.status set value "closed"
data modify storage bot:interpreter evaluate.next set value {type:"function"}
data modify storage bot:interpreter evaluate.next.name set from storage bot:interpreter evaluate.stack[-1].name
data modify storage bot:interpreter evaluate.next.args set from storage bot:interpreter evaluate.stack[-1].evaluated_args