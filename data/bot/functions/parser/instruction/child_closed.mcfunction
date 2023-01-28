execute unless data storage bot:parser stack[-1].args run data modify storage bot:parser stack[-1].args set value []
data remove storage bot:parser parsed.status
data remove storage bot:parser parsed.close
data remove storage bot:parser parsed.reparse
data modify storage bot:parser stack[-1].args append from storage bot:parser parsed
execute unless data storage bot:parser stack[-1].parameters[{}] run function bot:parser/instruction/close