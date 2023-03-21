data modify storage bot:parser stack[-1].metadata.opened set value true
data remove storage bot:parser temp

function bot:parser/parse/literal/alphanumeric/filters/first

execute if data storage moxlib:api/string/filter {output:true} run function bot:parser/parse/line/replace_with/expression
execute if data storage moxlib:api/string/filter {output:false} run function bot:parser/parse/line/instruction/registry