data modify storage bot:interpreter stack[-1].metadata.status set value "closed"

execute if data storage bot:interpreter evaluate.current{subtype:"assign"} run function bot:interpreter/evaluate/instruction/execute/assign/init
execute if data storage bot:interpreter evaluate.current{subtype:"control"} run function bot:interpreter/evaluate/instruction/execute/control/init
execute if data storage bot:interpreter evaluate.current{subtype:"keyword"} run function bot:interpreter/evaluate/instruction/execute/keyword/init
execute if data storage bot:interpreter evaluate.current{subtype:"command"} run function bot:interpreter/evaluate/instruction/execute/command/init
