data modify storage bot:parser temp.replaced set value true
data remove storage bot:parser stack[-1]
data modify storage bot:parser stack append value {type:"expression",metadata:{close:{type:"single",value:"^n"}}}