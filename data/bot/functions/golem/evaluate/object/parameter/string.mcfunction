data modify storage moxlib:api/data/get target set from storage bot:variables Parameterise.value
data modify storage moxlib:api/data/get key set value {key:{}}
data modify storage moxlib:api/data/get key.key set from storage bot:io Out
function moxlib:api/data/get

execute if data storage moxlib:api/data/get {success:true} run data modify storage bot:io Out set from storage moxlib:api/data/get output.value
execute if data storage moxlib:api/data/get {success:false} run data modify storage bot:io Out set value {type: "undefined", value: undefined}
