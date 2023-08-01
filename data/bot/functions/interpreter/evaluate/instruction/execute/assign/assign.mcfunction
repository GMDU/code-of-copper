data modify storage moxlib:api/data/get target set from storage bot:interpreter variables
data modify storage moxlib:api/data/get key.name set from storage bot:interpreter evaluate.stack[-1].evaluated_args[0].value
execute store result storage moxlib:api/data/get key.scope byte 1 run scoreboard players get $scope bot.interpreter

function moxlib:api/data/get

execute if data storage moxlib:api/data/get {success:true} run tellraw @a "Error: Yo dog, you can't re-assign a variable!"
execute if data storage moxlib:api/data/get {success:true} run return -1

data modify storage bot:interpreter variables prepend value {}
data modify storage bot:interpreter variables[0].name set from storage bot:interpreter evaluate.stack[-1].evaluated_args[0].value
data modify storage bot:interpreter variables[0].value set from storage bot:interpreter evaluate.stack[-1].evaluated_args[1]

execute store result storage bot:interpreter variables[0].scope byte 1 run scoreboard players get $scope bot.interpreter