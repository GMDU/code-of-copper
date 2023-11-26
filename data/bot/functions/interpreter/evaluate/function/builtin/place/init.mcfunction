data remove storage bot:interpreter temp.item
data modify storage bot:interpreter helpers.search_inventory.key set from storage bot:interpreter evaluate.stack[-1].args[0]
data modify storage bot:interpreter helpers.search_inventory.inventory set from entity @s Items
function bot:interpreter/evaluate/function/helpers/search_inventory/init

execute if data storage bot:interpreter helpers.search_inventory.output{slot:-1b} run return -1

data modify storage bot:interpreter temp.resource set from storage bot:interpreter evaluate.stack[-1].args[0]
data remove storage bot:interpreter temp.resource.type
data remove storage bot:interpreter temp.resource.value
data remove storage bot:interpreter temp.resource.variant

# UUID: 3efca315-0b20-4026-8024-2450ff25b92f
execute at @s run summon text_display ~ ~ ~ {text:'{"nbt":"temp.resource","storage": "bot:interpreter"}',UUID:[I; 1056744213, 186662950, -2145115056, -14304977],Tags:["bot.temp"],text_opacity:0,background:0}

execute store result score $x bot.interpreter run data get entity 3efca315-0b20-4026-8024-2450ff25b92f Pos[0]
execute store result score $dx bot.interpreter run data get storage bot:interpreter evaluate.stack[-1].args[1].value[0].value
execute if score $dx bot.interpreter matches 6.. run scoreboard players set $dx bot.interpreter 5
execute if score $dx bot.interpreter matches ..-6 run scoreboard players set $dx bot.interpreter -5
execute store result entity 3efca315-0b20-4026-8024-2450ff25b92f Pos[0] double 1 run scoreboard players operation $x bot.interpreter += $dx bot.interpreter

execute store result score $y bot.interpreter run data get entity 3efca315-0b20-4026-8024-2450ff25b92f Pos[1]
execute store result score $dy bot.interpreter run data get storage bot:interpreter evaluate.stack[-1].args[1].value[1].value
execute if score $dy bot.interpreter matches 6.. run scoreboard players set $dy bot.interpreter 5
execute if score $dy bot.interpreter matches ..-6 run scoreboard players set $dy bot.interpreter -5
execute store result entity 3efca315-0b20-4026-8024-2450ff25b92f Pos[1] double 1 run scoreboard players operation $y bot.interpreter += $dy bot.interpreter

execute store result score $z bot.interpreter run data get entity 3efca315-0b20-4026-8024-2450ff25b92f Pos[2]
execute store result score $dz bot.interpreter run data get storage bot:interpreter evaluate.stack[-1].args[1].value[2].value
execute if score $dz bot.interpreter matches 6.. run scoreboard players set $dz bot.interpreter 5
execute if score $dz bot.interpreter matches ..-6 run scoreboard players set $dz bot.interpreter -5
execute store result entity 3efca315-0b20-4026-8024-2450ff25b92f Pos[2] double 1 run scoreboard players operation $z bot.interpreter += $dz bot.interpreter

data modify entity 3efca315-0b20-4026-8024-2450ff25b92f Tags set from storage bot:interpreter registry.tools
data modify storage bot:interpreter temp.tags set from entity 3efca315-0b20-4026-8024-2450ff25b92f Tags

data modify entity 3efca315-0b20-4026-8024-2450ff25b92f Tags append from entity 3efca315-0b20-4026-8024-2450ff25b92f text
execute store result score $is_block bot.interpreter run data modify storage bot:interpreter temp.tags set from entity 3efca315-0b20-4026-8024-2450ff25b92f Tags
tag 3efca315-0b20-4026-8024-2450ff25b92f add bot.temp

execute if score $is_block bot.interpreter matches 0 at 3efca315-0b20-4026-8024-2450ff25b92f run function bot:interpreter/evaluate/function/builtin/place/tool
execute unless score $is_block bot.interpreter matches 0 at 3efca315-0b20-4026-8024-2450ff25b92f run function bot:interpreter/evaluate/function/builtin/place/block

kill 3efca315-0b20-4026-8024-2450ff25b92f
