data modify storage bot:parser temp.expression set from storage bot:parser stack[-1].value[0]
data remove storage bot:parser stack[-1]
data modify storage bot:parser stack append from storage bot:parser temp.expression