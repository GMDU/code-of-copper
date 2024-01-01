data modify storage bot:interpreter evaluate.stack[-1].metadata.return set value {type: "literal", variant: "boolean", value: true}
execute unless data storage bot:interpreter evaluate.stack[-1].args[0].value[] run return -1

data modify storage bot:interpreter evaluate.next set value {type: "function", variant: "proc", args: []}
data modify storage bot:interpreter evaluate.next.args append from storage bot:interpreter evaluate.stack[-1].args[0].value[0]
data modify storage bot:interpreter evaluate.next.value set from storage bot:interpreter evaluate.stack[-1].args[1]
data remove storage bot:interpreter evaluate.stack[-1].args[0].value[0]
