function bot:parser/parse/literal/alphanumeric/filters/first
data remove storage bot:parser temp
execute if data storage moxlib:api/string/filter {output:true} run data modify storage bot:parser raise set value '["[Alphanumeric] Unexpected: \'",{"storage":"bot:parser","nbt":"current.value"},"\', expected [A-Z,a-z]."]'

data modify storage bot:parser current.consumed set value true
data modify storage bot:parser stack[-1].value append from storage bot:parser current.value