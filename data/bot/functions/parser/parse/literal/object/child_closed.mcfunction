data remove storage bot:parser parsed.metadata

execute if data storage bot:parser stack[-1].metadata{status:"value"} run function bot:parser/parse/literal/object/child_closed/value
execute if data storage bot:parser stack[-1].metadata{status:"key"} run function bot:parser/parse/literal/object/child_closed/key