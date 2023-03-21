data modify storage bot:parser stack[-1].metadata.status set value "name"
data modify storage bot:parser stack append value {type:"literal",variant:"alphanumeric",metadata:{exclude:["function"]}}