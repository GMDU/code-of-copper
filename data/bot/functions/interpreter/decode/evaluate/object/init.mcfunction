execute unless data storage bot:interpreter evaluate.current.metadata.status run function bot:interpreter/decode/evaluate/object/before
execute if data storage bot:interpreter evaluate.current.metadata{status:"open"} run function bot:interpreter/decode/evaluate/object/open
execute if data storage bot:interpreter evaluate.stack[-1].metadata{status:"parameters"} run function bot:interpreter/decode/evaluate/object/parameters
execute if data storage bot:interpreter evaluate.stack[-1].metadata{status:"closed"} run function bot:interpreter/decode/evaluate/object/close