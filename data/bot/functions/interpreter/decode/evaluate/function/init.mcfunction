execute unless data storage bot:interpreter evaluate.current.metadata.status run function bot:interpreter/decode/evaluate/function/before
execute if data storage bot:interpreter evaluate.current.metadata{status:"open"} run function bot:interpreter/decode/evaluate/function/open
execute if data storage bot:interpreter evaluate.stack[-1].metadata{status:"execute"} run function bot:interpreter/decode/evaluate/function/execute
execute if data storage bot:interpreter evaluate.current.metadata{status:"closed"} run function bot:interpreter/decode/evaluate/function/close