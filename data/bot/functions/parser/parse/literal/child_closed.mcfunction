data modify storage bot:parser parent set from storage bot:parser stack[-1]
execute unless data storage bot:parser parent.metadata{status:"closed"} run function bot:parser/parse/literal/child_closed/value
execute if data storage bot:parser parent.metadata{status:"closed"} run function bot:parser/parse/literal/child_closed/parameter