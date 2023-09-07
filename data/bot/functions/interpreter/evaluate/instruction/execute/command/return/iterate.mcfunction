data remove storage bot:interpreter evaluate.stack[-1]
data modify storage bot:interpreter temp.instruction set from storage bot:interpreter evaluate.stack[-1]

execute if data storage bot:interpreter temp.instruction{type:"block"} run function bot:interpreter/evaluate/block/close
execute if data storage bot:interpreter temp.instruction{tags:["function"]} run return -1

execute if data storage bot:interpreter evaluate.stack[] run function bot:interpreter/evaluate/instruction/execute/command/return/iterate