execute unless data storage bot:interpreter evaluate.current.metadata.status run function bot:interpreter/evaluate/literal/object/before
execute if data storage bot:interpreter evaluate.current.metadata{status:"open"} run function bot:interpreter/evaluate/literal/object/open
execute if data storage bot:interpreter evaluate.stack[-1].metadata{status:"parameters"} run function bot:interpreter/evaluate/literal/object/parameters
execute if data storage bot:interpreter evaluate.stack[-1].metadata{status:"closed"} run function bot:interpreter/evaluate/literal/object/close