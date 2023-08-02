execute unless data storage bot:interpreter evaluate.current.metadata.status run function bot:interpreter/evaluate/instruction/before
execute if data storage bot:interpreter evaluate.current.metadata{status:"open"} run function bot:interpreter/evaluate/instruction/open

execute if data storage bot:interpreter evaluate.next{type:"block"} unless data storage bot:interpreter evaluate.stack[-1].metadata{status:"execute"} run function bot:interpreter/evaluate/instruction/ignore_block

execute unless data storage bot:interpreter evaluate.stack[-1].metadata.stack[] run data modify storage bot:interpreter evaluate.stack[-1].metadata.status set value "execute"

execute if data storage bot:interpreter evaluate.stack[-1].metadata{status:"execute"} run function bot:interpreter/evaluate/instruction/execute/init