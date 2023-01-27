function bot:parser/expression/close/iterate

execute if data storage bot:helpers/compare {output:true} run function bot:parser/expression/close/cleanup
execute unless data storage bot:helpers/compare {output:true} run data modify storage bot:parser raise set value "Error parsing expression"