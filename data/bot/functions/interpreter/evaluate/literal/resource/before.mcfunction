data modify storage bot:interpreter evaluate.stack[-1].value set value true
execute unless data storage bot:interpreter evaluate.stack[-1].parameters[] run return -1

data modify storage bot:interpreter evaluate.stack[-1].metadata.status set value "parameters"
data modify storage bot:interpreter evaluate.next set from storage bot:interpreter evaluate.stack[-1].parameters[0]
data remove storage bot:interpreter evaluate.stack[-1].parameters[0]