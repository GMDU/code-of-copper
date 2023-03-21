function bot:parser/parse/literal/alphanumeric/filters/first

execute if data storage moxlib:api/string/filter {output:false} run data modify storage bot:parser expression.type set value {type:"literal",variant:"alphanumeric"}