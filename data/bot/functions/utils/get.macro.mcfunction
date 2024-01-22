data remove storage moxlib:api/data/get output
data modify storage moxlib:api/data/get success set value false
$data modify storage moxlib:api/data/get output append from storage moxlib:api/data/get target[$(key)]
execute if data storage moxlib:api/data/get output[] run data modify storage moxlib:api/data/get success set value true
data modify storage moxlib:api/data/get output set from storage moxlib:api/data/get output[0]
data remove storage moxlib:api/data/get key
data remove storage moxlib:api/data/get target