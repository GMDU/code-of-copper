function bot:parser/common/alphanumeric
execute if data storage moxlib:api/string/filter {output:true} run data modify storage bot:parser stack[-1].metadata.status set value "closed"