data modify storage bot:parser stack[-1].metadata.status set value "open_value"
data modify storage bot:parser stack append value {type:"literal",variant:"alphanumeric",metadata:{close:[":"]}}

function bot:parser/common/open