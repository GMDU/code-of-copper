data modify storage bot:parser stack[-1].metadata.status set value "open_key"
data modify storage bot:parser stack append value {type:"expression",metadata:{close:[",","}"]}}

function bot:parser/common/open