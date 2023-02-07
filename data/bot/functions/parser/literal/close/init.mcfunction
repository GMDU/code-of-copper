execute if data storage bot:parser {current:" "} run data modify storage bot:parser consumed set value true
execute unless data storage bot:parser stack[-1].metadata.closing run function bot:parser/literal/close/first_close
execute if data storage bot:parser stack[-1].metadata.closing run function bot:parser/literal/close/later_close