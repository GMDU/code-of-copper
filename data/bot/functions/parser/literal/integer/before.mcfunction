execute unless data storage bot:parser {current:" "} run data modify storage bot:parser stack[-1].status set value "open"
execute if data storage bot:parser {current:"-"} run data modify storage bot:parser stack[-1].inverted set value true
execute unless data storage bot:parser {current:"-"} run function bot:parser/common/reparse