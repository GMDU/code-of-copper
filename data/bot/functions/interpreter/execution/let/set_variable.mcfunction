execute on passengers as @s[type=marker,tag=bot.golem.brain] run data modify storage moxlib:api/data/set target set from entity @s data.variables
data modify storage moxlib:api/data/set key set value {name:""}
data modify storage moxlib:api/data/set key.name set from storage bot:interpreter/execution varName
data modify storage moxlib:api/data/set data set value {value:0,scope:0}
data modify storage moxlib:api/data/set data.value set from storage bot:interpreter/execution value

execute on passengers as @s[type=marker,tag=bot.golem.brain] run data modify storage moxlib:api/data/get target set from entity @s data.variables
data modify storage moxlib:api/data/get key set value {name:""}
data modify storage moxlib:api/data/get key.name set from storage bot:interpreter/execution varName

function moxlib:api/data/get

execute if data storage moxlib:api/data/get {success:true} run data modify storage moxlib:api/data/set data.scope set from storage moxlib:api/data/get output.scope
execute if data storage moxlib:api/data/get {success:false} on passengers as @s[type=marker,tag=bot.golem.brain] run data modify storage moxlib:api/data/set data.scope set from entity @s data.nest_level
data modify storage bot:interpreter/execution first_character set from storage bot:interpreter/execution varName[0]
execute if data storage bot:interpreter/execution {first_character:'$'} run data modify storage moxlib:api/data/set data.scope set value 0

data modify storage bot:dev_mode logs append value '[{"text": "Let: setting variable ", "color": "green"},{"nbt":"varName", "storage": "bot:interpreter/execution", "color": "yellow","interpret":true},{"text": " to value ", "color": "green"},{"nbt": "value", "storage": "bot:interpreter/execution", "color": "yellow"}]'

function moxlib:api/data/set
execute on passengers as @s[type=marker,tag=bot.golem.brain] run data modify entity @s data.variables set from storage moxlib:api/data/set output
