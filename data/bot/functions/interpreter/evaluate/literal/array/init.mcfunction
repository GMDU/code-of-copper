execute unless data storage bot:interpreter evaluate.current.metadata.status run function bot:interpreter/evaluate/literal/array/before
execute if data storage bot:interpreter evaluate.current.metadata{status:"open"} run function bot:interpreter/evaluate/literal/array/open
execute if data storage bot:interpreter evaluate.stack[-1].metadata{status:"parameters"} run function bot:interpreter/evaluate/literal/array/parameters/init
execute if data storage bot:interpreter evaluate.stack[-1].metadata{status:"closed"} run function bot:interpreter/evaluate/literal/array/close