execute unless data storage bot:parser stack[-1].parameters run data modify storage bot:parser stack[-1].parameters set value []
data modify storage bot:parser stack[-1].parameters append from storage bot:parser parsed
data modify storage bot:parser consumed set value true