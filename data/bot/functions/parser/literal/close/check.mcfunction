data modify storage moxlib:api/string/filter target set from storage bot:parser stack[-1].metadata.close
data modify storage moxlib:api/string/filter key set from storage bot:parser current
function moxlib:api/string/filter

execute if data storage moxlib:api/string/filter {output:true} run data modify storage bot:parser raise set value '{"text":"[Literal]: Error parsing literal at \\"","extra":[{"nbt":"current","storage":"bot:parser"},"\\""]}'
execute if data storage moxlib:api/string/filter {output:false} run function bot:parser/literal/close/cleanup