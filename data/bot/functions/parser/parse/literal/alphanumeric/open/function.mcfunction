data modify storage bot:parser temp.function set value true
data modify storage bot:parser temp.value set from storage bot:parser stack[-1].value
data remove storage bot:parser stack[-1]
data modify storage bot:parser stack append value {type:"literal",variant:"function"}
data modify storage bot:parser stack[-1].value set from storage bot:parser temp.value