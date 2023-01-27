function bot:parser/literal/close/iterate

execute if data storage bot:helpers/compare {output:true} run function bot:parser/literal/close/cleanup
execute unless data storage bot:helpers/compare {output:true} run data modify storage bot:parser raise set value "Error parsing literal"