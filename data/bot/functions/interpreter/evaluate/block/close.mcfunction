data modify storage moxlib:api/data/collect target set from storage bot:interpreter variables
execute store result storage moxlib:api/data/collect key.scope byte 1 run scoreboard players get $scope bot.interpreter

function moxlib:api/data/collect

data modify storage bot:interpreter variables set from storage moxlib:api/data/collect output.remain

scoreboard players remove $scope bot.interpreter 1