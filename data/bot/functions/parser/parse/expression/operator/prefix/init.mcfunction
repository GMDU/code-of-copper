execute unless data storage bot:parser stack[-1].metadata.registry run function bot:parser/parse/expression/operator/prefix/registry
function bot:parser/parse/expression/operator/check_registry

execute unless data storage bot:parser stack[-1].metadata{no_matches:true} run return -1
data remove storage bot:parser stack[-1].metadata.registry

execute unless data storage bot:parser stack[-1].metadata.operator run data modify storage bot:parser stack[-1].metadata merge value {status:"literal",no_matches:false}
execute if data storage bot:parser stack[-1].metadata.operator run function bot:parser/parse/expression/operator/prefix/add