data modify storage moxlib:api/string/from_array target set from storage glm:api/interpreter/function execute.args[0].namespace
data modify storage moxlib:api/string/from_array target append value ":"
data modify storage moxlib:api/string/from_array target append from storage glm:api/interpreter/function execute.args[0].id[]

function moxlib:api/string/from_array

data modify storage bot:private temp.place.id set from storage moxlib:api/string/from_array output

data modify storage moxlib:api/data/get target set from entity @s Items
data modify storage moxlib:api/data/get key.id set from storage bot:private temp.place.id

function bot:utils/get.macro with storage moxlib:api/data/get

data modify storage bot:private temp.place.slot set from storage moxlib:api/data/get output.Slot
data modify storage bot:private temp.place.components set from storage moxlib:api/data/get output.components
data modify storage bot:private temp.place.item set from storage moxlib:api/data/get output
data remove storage bot:private temp.place.item.Slot

execute store result score $count bot.interpreter run data get storage moxlib:api/data/get output.count

execute if data storage moxlib:api/data/get {success:false} run return -1

execute store result score $dx bot.interpreter run data get storage glm:api/interpreter/function execute.args[1].value[0].value
execute if score $dx bot.interpreter matches 6.. run scoreboard players set $dx bot.interpreter 5
execute if score $dx bot.interpreter matches ..-6 run scoreboard players set $dx bot.interpreter -5
execute store result storage bot:private temp.place.x int 1 run scoreboard players get $dx bot.interpreter

execute store result score $dy bot.interpreter run data get storage glm:api/interpreter/function execute.args[1].value[1].value
execute if score $dy bot.interpreter matches 6.. run scoreboard players set $dy bot.interpreter 5
execute if score $dy bot.interpreter matches ..-6 run scoreboard players set $dy bot.interpreter -5
execute store result storage bot:private temp.place.y int 1 run scoreboard players get $dy bot.interpreter

execute store result score $dz bot.interpreter run data get storage glm:api/interpreter/function execute.args[1].value[2].value
execute if score $dz bot.interpreter matches 6.. run scoreboard players set $dz bot.interpreter 5
execute if score $dz bot.interpreter matches ..-6 run scoreboard players set $dz bot.interpreter -5
execute store result storage bot:private temp.place.z int 1 run scoreboard players get $dz bot.interpreter

data modify storage moxlib:api/string/filter target set from storage bot:private registry.tools
data modify storage moxlib:api/string/filter key set from storage bot:private temp.place.id

function bot:utils/filter.macro with storage moxlib:api/string/filter

execute if data storage moxlib:api/string/filter {output:false} at @s run function bot:glm/function/place/tool with storage bot:private temp.place
execute unless data storage moxlib:api/string/filter {output:false} at @s run function bot:glm/function/place/block with storage bot:private temp.place