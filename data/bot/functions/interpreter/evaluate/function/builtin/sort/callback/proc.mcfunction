data modify storage bot:utils sort.break set value true

data modify storage bot:interpreter evaluate.next set value {type: "function", variant: "proc", args: []}
data modify storage bot:interpreter evaluate.next.value set from storage bot:interpreter evaluate.stack[-1].args[1]

data modify storage bot:interpreter evaluate.next.args append from storage bot:utils sort.stack[-1].target[0]
data modify storage bot:interpreter evaluate.next.args append from storage bot:utils sort.stack[-1].pivot

data modify storage bot:interpreter evaluate.stack[-1].metadata.sort set from storage bot:utils sort.stack