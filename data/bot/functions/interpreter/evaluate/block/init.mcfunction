execute unless data storage bot:interpreter evaluate.current.metadata.status run function bot:interpreter/evaluate/block/before
execute if data storage bot:interpreter evaluate.stack[-1].metadata{status:"open"} run function bot:interpreter/evaluate/block/open
execute if data storage bot:interpreter evaluate.stack[-1].metadata{status:"closed"} run function bot:interpreter/evaluate/block/close