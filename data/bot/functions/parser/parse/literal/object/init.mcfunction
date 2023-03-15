execute unless data storage bot:parser stack[-1].metadata.status run function bot:parser/parse/literal/object/before
execute if data storage bot:parser stack[-1].metadata{status:"key"} run function bot:parser/parse/literal/object/key
execute if data storage bot:parser stack[-1].metadata{status:"value"} run function bot:parser/parse/literal/object/value