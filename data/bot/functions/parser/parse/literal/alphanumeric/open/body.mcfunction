function bot:parser/parse/literal/alphanumeric/filters/body

execute if data storage moxlib:api/string/filter {output:true} run data modify storage bot:parser stack[-1].metadata.status set value "closed"

execute if data storage moxlib:api/string/filter {output:false} run data modify storage bot:parser stack[-1].value append from storage bot:parser current.value
execute if data storage moxlib:api/string/filter {output:false} run data modify storage bot:parser current.consumed set value true