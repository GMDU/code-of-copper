execute unless data storage bot:interpreter evaluate.current.metadata.status run function bot:interpreter/decode/evaluate/function/before
execute if data storage bot:interpreter evaluate.current.metadata{status:"open"} run function bot:interpreter/decode/evaluate/function/open
