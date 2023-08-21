data modify storage moxlib:api/data/get target set from storage bot:interpreter variables
data modify storage moxlib:api/data/get key.name set from storage bot:interpreter evaluate.variable.name.value
execute store result storage moxlib:api/data/get key.scope byte 1 run scoreboard players get $scope bot.interpreter

function moxlib:api/data/get

execute if data storage moxlib:api/data/get {success:true} run data modify storage bot:interpreter error set value '[{"text":"RuntimeError: Cannot redeclare variable "},{"storage":"moxlib:api/data/get","nbt":"output.name","interpret":true}]'
execute if data storage moxlib:api/data/get {success:true} run return -1

data modify storage bot:interpreter variables prepend value {}
data modify storage bot:interpreter variables[0].name set from storage bot:interpreter evaluate.variable.name.value
data modify storage bot:interpreter variables[0].value set from storage bot:interpreter evaluate.variable.value

execute store result storage bot:interpreter variables[0].scope byte 1 run scoreboard players get $scope bot.interpreter