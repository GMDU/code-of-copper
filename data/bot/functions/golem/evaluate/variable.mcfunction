data modify storage moxlib:api/data/get target set from storage bot:program Variables
data modify storage moxlib:api/data/get key set value {name:""}
data modify storage moxlib:api/data/get key.name set from storage bot:variables RecursiveEvaluation.evaluateStack[-1].value
function moxlib:api/data/get
execute if data storage moxlib:api/data/get {success:true} run data modify storage bot:io Out set from storage moxlib:api/data/get output.value
execute if data storage moxlib:api/data/get {success:false} run data modify storage bot:io Out set value 0
