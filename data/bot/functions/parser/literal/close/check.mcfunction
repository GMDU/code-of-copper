function bot:parser/literal/close/iterate

data modify storage bot:parser/literal compare set from storage bot:helpers/compare output
execute if data storage bot:parser/literal {compare:true} run function bot:parser/literal/close/cleanup
execute unless data storage bot:parser/literal {compare:true} run data modify storage bot:parser raise set value '{"text":"[Literal]: Error parsing literal at \\"","extra":[{"nbt":"current","storage":"bot:parser"},"\\""]}'