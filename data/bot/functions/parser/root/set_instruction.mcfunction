data remove storage bot:parser stack[-1].instructions
data modify storage bot:parser stack append from storage bot:parser/root/filter output[0]
data modify storage bot:parser stack[-1].type set value "instruction"