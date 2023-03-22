data modify storage moxlib:api/string/filter target set value ["-","0","1","2","3","4","5","6","7","8","9"]
data modify storage moxlib:api/string/filter key set from storage bot:parser current.value
function moxlib:api/string/filter

execute if data storage moxlib:api/string/filter {output:false} run data modify storage bot:parser expression.type set value {type:"literal",variant:"integer"}