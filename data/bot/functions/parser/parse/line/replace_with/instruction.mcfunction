data modify storage bot:parser temp.instruction set from storage bot:parser stack[-1].instruction
data modify storage bot:parser temp.replaced set value true
data remove storage bot:parser stack[-1]
data modify storage bot:parser stack append from storage bot:parser temp.instruction