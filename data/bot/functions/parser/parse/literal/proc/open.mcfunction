execute unless data storage bot:parser current{value:"("} run data modify storage bot:parser stack append value {type:"literal",variant:"alphanumeric"}
execute unless data storage bot:parser current{value:"("} run return -1

data modify storage bot:parser current.consumed set value true
data modify storage bot:parser stack[-1].metadata.status set value "parameters"
