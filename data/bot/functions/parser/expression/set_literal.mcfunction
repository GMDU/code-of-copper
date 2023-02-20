data modify storage bot:parser stack append value {"type":"literal"}
data modify storage bot:parser stack[-1] merge from storage bot:parser/expression variant
function bot:parser/common/open