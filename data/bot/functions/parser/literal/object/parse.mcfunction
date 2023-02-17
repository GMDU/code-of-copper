execute unless data storage bot:parser stack[-1].metadata.status run function bot:parser/literal/object/before
execute if data storage bot:parser stack[-1].metadata{status:"open_key"} run function bot:parser/literal/object/open_key
execute if data storage bot:parser stack[-1].metadata{status:"open_value"} run function bot:parser/literal/object/open_value