data remove storage bot:parser stack[-1].instructions
data modify storage bot:parser stack append from storage bot:parser/root match
data modify storage bot:parser stack[-1].type set value "instruction"