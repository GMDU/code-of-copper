data modify storage bot:helpers/compare target set from storage bot:parser stack[-1].close[0]
data modify storage bot:helpers/compare source set from storage bot:parser current
function bot:helpers/compare

data remove storage bot:parser stack[-1].close[0]
execute if data storage bot:parser stack[-1].close[] unless data storage bot:helpers/compare {output:true} run function bot:parser/literal/close/iterate