data modify storage bot:parser consumed set value true
function bot:parser/literal/alphanumeric/filters/first

execute if data storage moxlib:api/string/filter {output:false} run data modify storage bot:parser stack[-1].metadata.status set value "open"
execute if data storage bot:parser stack[-1].metadata{status:"open"} run data modify storage bot:parser stack[-1].value append from storage bot:parser current
execute unless data storage moxlib:api/string/filter {output:false} run data modify storage bot:parser raise set value '{"text":"[Literal - Alphanumeric]: Expected [A-Za-z], received \\"","extra":[{"nbt":"current","storage":"bot:parser"},"\\""]}'