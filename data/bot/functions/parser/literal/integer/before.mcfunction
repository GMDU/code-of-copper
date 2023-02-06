data modify storage bot:parser consumed set value true
execute unless data storage bot:parser {current:" "} run data modify storage bot:parser stack[-1].metadata.status set value "open"
execute if data storage bot:parser {current:"-"} run function bot:parser/literal/integer/invert