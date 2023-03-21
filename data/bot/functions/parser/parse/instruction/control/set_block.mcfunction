data modify storage bot:parser stack[-1].metadata.status set value "block"
data modify storage bot:parser stack append value {type:"block",metadata:{close:{type:"end"}}}