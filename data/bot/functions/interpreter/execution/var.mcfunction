data modify storage bot:interpreter/execution varName set from storage bot:interpreter/execution current.decoded_args[0].value
data modify storage bot:interpreter/execution value set from storage bot:interpreter/execution current.decoded_args[1]

data modify storage moxlib:api/data/get target set from entity @s data.variables
data modify storage moxlib:api/data/get key set value {name:""}
data modify storage moxlib:api/data/get key.name set from storage bot:interpreter/execution varName

function moxlib:api/data/get

execute if data storage moxlib:api/data/get {success:true} run data modify storage bot:interpreter/execution Error set value [["Var - cannot redeclare variable "],[""]]
execute if data storage moxlib:api/data/get {success:true} run data modify storage bot:interpreter/execution Error[1] set from storage bot:interpreter/execution varName

execute unless data storage bot:interpreter/execution Error run function bot:interpreter/execution/var/set
