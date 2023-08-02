
data modify storage bot:interpreter evaluate.stack[-1].evaluated_args append from storage bot:interpreter evaluate.next
data remove storage bot:interpreter evaluate.next

data modify storage bot:interpreter evaluate.next set from storage bot:interpreter evaluate.stack[-1].metadata.stack[0]
data remove storage bot:interpreter evaluate.stack[-1].metadata.stack[0]

execute if data storage bot:interpreter evaluate.next{type:"block"} run function bot:interpreter/evaluate/instruction/ignore_block