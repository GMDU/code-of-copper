execute unless data storage bot:parser stack[-1].metadata.status run function bot:parser/parse/literal/proc/before 
execute if data storage bot:parser stack[-1].metadata{status:"closed"} run function bot:parser/parse/literal/proc/close
execute if data storage bot:parser stack[-1].metadata{status:"open"} run function bot:parser/parse/literal/proc/open 
