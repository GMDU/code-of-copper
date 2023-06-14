data modify storage bot:interpreter evaluate.stack[-1].metadata.status set value "closed"
data modify storage bot:interpreter evaluate.result set from storage bot:interpreter evaluate.stack[-1]
data modify storage bot:interpreter evaluate.break set value true