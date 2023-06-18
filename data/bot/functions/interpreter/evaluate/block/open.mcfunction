execute unless data storage bot:interpreter evaluate.stack[-1].value[] run data modify storage bot:interpreter evaluate.stack[-1].metadata.status set value "closed"
execute unless data storage bot:interpreter evaluate.stack[-1].value[] run return -1

data modify storage bot:interpreter evaluate.next set from storage bot:interpreter evaluate.stack[-1].value[0]
data remove storage bot:interpreter evaluate.stack[-1].value[0]