data modify storage moxlib:api/data/get target set from entity @s data.functions
data modify storage moxlib:api/data/get key set value {name: {type: "literal", variant: "string", value: []}}
data modify storage moxlib:api/data/get key.name.value set from storage bot:interpreter/execution current.name

function moxlib:api/data/get

execute if data storage moxlib:api/data/get {success:false} run data modify storage bot:interpreter/execution Error set value [["Function - '"],[],["' is undefined"]]
execute if data storage moxlib:api/data/get {success:false} run data modify storage bot:interpreter/execution Error[1] set from storage bot:interpreter/execution current.name
execute if data storage moxlib:api/data/get {success:true} run data modify storage bot:interpreter/execution/function function set from storage moxlib:api/data/get output
