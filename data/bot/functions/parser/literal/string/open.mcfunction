execute if data storage bot:parser {current:"\""} run data modify storage bot:parser stack[-1].metadata.status set value "closed"
execute unless data storage bot:parser {current:"\""} run data modify storage bot:parser stack[-1].value append from storage bot:parser current
data modify storage bot:parser consumed set value true