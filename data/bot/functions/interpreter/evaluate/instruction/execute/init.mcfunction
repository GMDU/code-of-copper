execute if data storage bot:interpreter evaluate.current{variant:"let"} run function bot:interpreter/evaluate/instruction/execute/let

data modify storage bot:interpreter evaluate.break set value true
data modify storage bot:interpreter stack[-1].metadata.status set value "closed"