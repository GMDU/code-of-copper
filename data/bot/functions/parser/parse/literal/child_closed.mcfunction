execute unless data storage bot:parser stack[-1].metadata{status:"closed"} run function bot:parser/parse/literal/child_closed/value
execute if data storage bot:parser stack[-1].metadata{status:"closed"} run function bot:parser/parse/literal/child_closed/parameter