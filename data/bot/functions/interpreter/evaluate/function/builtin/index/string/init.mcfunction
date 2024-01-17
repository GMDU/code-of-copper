data remove storage bot:interpreter temp.index
data modify storage bot:interpreter temp.index.match set from storage bot:interpreter evaluate.stack[-1].args[1].value

function bot:interpreter/evaluate/function/builtin/index/string/iterate
