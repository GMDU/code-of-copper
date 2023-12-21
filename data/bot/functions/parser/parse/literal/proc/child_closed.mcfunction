execute unless data storage bot:parser stack[-1].metadata{status:"parameters"} run function bot:parser/parse/literal/proc/child_closed/value
execute if data storage bot:parser stack[-1].metadata{status:"parameters"} run function bot:parser/parse/literal/proc/child_closed/parameter
