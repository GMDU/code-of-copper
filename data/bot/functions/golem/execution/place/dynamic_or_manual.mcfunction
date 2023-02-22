data modify storage moxlib:api/data/get target set from storage bot:interpreter/execution blockCounterparts
data modify storage moxlib:api/data/get key set value {item:""}
data modify storage moxlib:api/data/get key.item set from storage bot:io In.id
function moxlib:api/data/get
execute if data storage moxlib:api/data/get {success:false} run data modify storage moxlib:api/helpers/block/place target.Name set from storage bot:io In.id
execute if data storage moxlib:api/data/get {success:true} run data modify storage moxlib:api/helpers/block/place target.Name set from storage moxlib:api/data/get output.block
