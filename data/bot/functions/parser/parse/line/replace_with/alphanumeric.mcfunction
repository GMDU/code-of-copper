data modify storage bot:parser temp.alphanumeric set from storage bot:parser stack[-1].value
function bot:parser/parse/line/replace_with/expression
data modify storage bot:parser stack append value {type:"literal",variant:"alphanumeric"}
data modify storage bot:parser stack[-1].value set from storage bot:parser temp.alphanumeric