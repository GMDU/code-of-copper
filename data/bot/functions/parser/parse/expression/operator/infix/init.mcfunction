execute unless data storage bot:parser stack[-1].metadata.registry run function bot:parser/parse/expression/operator/infix/registry
function bot:parser/parse/expression/operator/check_registry

execute if data storage bot:parser stack[-1].metadata{no_matches:true} if data storage bot:parser stack[-1].metadata.operator run function bot:parser/parse/expression/operator/infix/add

execute if data storage bot:parser stack[-1].metadata{no_matches:true} unless data storage bot:parser stack[-1].metadata.operator run data modify storage bot:parser raise set value '["[Expression - Operator] Unexpected \'",{"storage":"bot:parser","nbt":"current.value"},"\' expected valid operator."]'