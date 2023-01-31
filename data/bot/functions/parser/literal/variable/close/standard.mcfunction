data modify storage moxlib:api/string/filter target set value ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z","-","_","0","1","2","3","4","5","6","7","8","9"]
data modify storage moxlib:api/string/filter key set from storage bot:parser current
function moxlib:api/string/filter

execute if data storage moxlib:api/string/filter {output:true} run data modify storage bot:parser/literal current.metadata.status set value "closed"