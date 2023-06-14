execute unless data storage bot:interpreter evaluate.current.metadata.status run function bot:interpreter/evaluate/literal/function/before
execute if data storage bot:interpreter evaluate.current.metadata{status:"open"} run function bot:interpreter/evaluate/literal/function/open
execute if data storage bot:interpreter evaluate.stack[-1].metadata{status:"execute"} run function bot:interpreter/evaluate/literal/function/execute
execute if data storage bot:interpreter evaluate.current.metadata{status:"closed"} run function bot:interpreter/evaluate/literal/function/close