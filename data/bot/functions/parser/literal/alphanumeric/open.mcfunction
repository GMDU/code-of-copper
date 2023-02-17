function bot:parser/literal/alphanumeric/filters/body
execute if data storage moxlib:api/string/filter {output:true} run data modify storage bot:parser stack[-1].metadata.status set value "closed"
execute unless data storage bot:parser stack[-1].metadata{status:"closed"} run data modify storage bot:parser stack[-1].value append from storage bot:parser current
execute unless data storage bot:parser stack[-1].metadata{status:"closed"} run data modify storage bot:parser consumed set value true

execute if data storage bot:parser stack[-1].metadata{status:"closed"} if data storage bot:parser stack[-1].metadata.returns run data modify storage bot:parser stack[-1].variant set from storage bot:parser stack[-1].metadata.returns