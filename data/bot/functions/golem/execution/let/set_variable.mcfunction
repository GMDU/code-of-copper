execute on passengers as @s[type=marker,tag=bot.golem.brain] run data modify storage moxlib:api/data/set target set from entity @s data.variables
data modify storage moxlib:api/data/set key set value {name:""}
data modify storage moxlib:api/data/set key.name set from storage bot:variables varName
data modify storage moxlib:api/data/set data set value {value:0}
data modify storage moxlib:api/data/set data.value set from storage bot:variables value
function moxlib:api/data/set
execute on passengers as @s[type=marker,tag=bot.golem.brain] run data modify entity @s data.variables set from storage moxlib:api/data/set output
