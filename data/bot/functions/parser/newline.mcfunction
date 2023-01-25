data modify storage bot:helpers/compare target set from storage bot:parser current
data modify storage bot:helpers/compare source set from storage moxlib:api/string/newline output
function bot:helpers/compare

execute if data storage bot:helpers/compare {output:true} run data modify storage bot:parser current set value "^n"