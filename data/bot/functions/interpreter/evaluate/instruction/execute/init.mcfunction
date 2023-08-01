execute if data storage bot:interpreter evaluate.current{subtype:"assign"} run function bot:interpreter/evaluate/instruction/execute/assign/init
execute if data storage bot:interpreter evaluate.current{subtype:"control"} run function bot:interpreter/evaluate/instruction/execute/control/init

data modify storage bot:interpreter evaluate.break set value true
data modify storage bot:interpreter stack[-1].metadata.status set value "closed"