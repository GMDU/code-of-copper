data modify storage bot:parser stack[-1].metadata.status set value "expression"
data modify storage bot:parser stack append value {type:"expression",metadata:{close:{type:"single",value:"^n"}}}