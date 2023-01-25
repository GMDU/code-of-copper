function bot:parser/literal/close/iterate

data remove storage bot:parser stack[-1].status
data remove storage bot:parser stack[-1].close

execute if data storage bot:helpers/compare {output:true} run function bot:parser/common/close
execute unless data storage bot:helpers/compare {output:true} run data modify storage bot:parser raise set value "Error parsing literal"