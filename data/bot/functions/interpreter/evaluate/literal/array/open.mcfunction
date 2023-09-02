execute unless data storage bot:interpreter evaluate.stack[-1].metadata.stack[] run return -1

data remove storage bot:interpreter evaluate.stack[-1].metadata.stack[0]
data modify storage bot:interpreter evaluate.stack[-1].value append from storage bot:interpreter evaluate.result

execute unless data storage bot:interpreter evaluate.stack[-1].metadata.stack[] run data modify storage bot:interpreter evaluate.stack[-1].metadata.status set value "closed"

data modify storage bot:interpreter evaluate.next set from storage bot:interpreter evaluate.stack[-1].metadata.stack[0]