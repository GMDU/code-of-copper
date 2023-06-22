data modify storage moxlib:api/data/get target set from storage bot:interpreter variables
data modify storage moxlib:api/data/get key.name set from storage bot:interpreter evaluate.assign.name

function moxlib:api/data/get

execute if data storage moxlib:api/data/get output{constant:true} run tellraw @a "Error: Yo dog, you can't re-assign a constant!"
execute if data storage moxlib:api/data/get output{constant:true} run return -1

data modify storage moxlib:api/data/set target set from storage bot:interpreter variables
data modify storage moxlib:api/data/set key.name set from storage bot:interpreter evaluate.assign.name
execute if data storage moxlib:api/data/get {success:true} store result storage moxlib:api/data/set data.scope byte 1 run scoreboard players get $scope bot.interpreter
data modify storage moxlib:api/data/set data.value set from storage bot:interpreter evaluate.assign.value

function moxlib:api/data/set

data modify storage bot:interpreter variables set from storage moxlib:api/data/set output