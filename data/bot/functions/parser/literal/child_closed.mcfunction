execute unless data storage bot:parser stack[-1].metadata{status:"closed"} run function bot:parser/literal/append/value
execute if data storage bot:parser stack[-1].metadata{status:"closed"} run function bot:parser/literal/append/parameter
