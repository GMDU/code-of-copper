$execute if block ~$(x) ~$(y) ~$(z) #bot:unbreakable run return -1

# 704a8f67-58d9-429d-8535-8eb0957136ca
summon armor_stand ~ ~ ~ {UUID:[I; 1883934567, 1490633373, -2060087632, -1787742518],Invisible:1b,Marker:1b,Tags:["bot.temp"]}
data modify entity 704a8f67-58d9-429d-8535-8eb0957136ca HandItems[0] set from storage bot:private temp.place.item

$execute as 704a8f67-58d9-429d-8535-8eb0957136ca run loot replace entity @s weapon.offhand mine ~$(x) ~$(y) ~$(z) mainhand

scoreboard players set $damage bot.interpreter 0
execute store result score $damage bot.interpreter run data get storage bot:private temp.place.components.minecraft:damage
execute store result entity 704a8f67-58d9-429d-8535-8eb0957136ca HandItems[0].components.minecraft:damage int 1 run scoreboard players add $damage bot.interpreter 1
execute as 704a8f67-58d9-429d-8535-8eb0957136ca store result score $is_broken bot.interpreter run execute if predicate bot:is_broken

$execute if score $is_broken bot.interpreter matches 1 run data remove entity @s Items[{Slot:$(slot)b}]
$execute unless score $is_broken bot.interpreter matches 1 store result entity @s Items[{Slot:$(slot)b}].components.minecraft:damage int 1 run scoreboard players get $damage bot.interpreter

data modify storage moxlib:api/helpers/inventory/insert target set from entity @s Items
data modify storage moxlib:api/helpers/inventory/insert item set from entity 704a8f67-58d9-429d-8535-8eb0957136ca HandItems[1]
function moxlib:api/helpers/inventory/insert

data modify entity @s Items set from storage moxlib:api/helpers/inventory/insert output.inventory

execute if data storage moxlib:api/helpers/inventory/insert output.overflow run summon item ~0.5 ~ ~0.5 {Item:{count:1,id:"minecraft:stick"},Tags:["bot.overflow"]}
execute if data storage moxlib:api/helpers/inventory/insert output.overflow run data modify entity @e[type=item,tag=bot.overflow,limit=1] Item merge from storage moxlib:api/helpers/inventory/insert output.overflow
execute if data storage moxlib:api/helpers/inventory/insert output.overflow store result entity @e[type=item,tag=bot.overflow,limit=1] Item.count int 1 run data get storage moxlib:api/helpers/inventory/insert output.overflow.count
tag @e[tag=bot.overflow] remove bot.overflow

kill 704a8f67-58d9-429d-8535-8eb0957136ca

execute store result score $tile_drops bot.interpreter run gamerule doTileDrops
execute if score $tile_drops bot.interpreter matches 1 run scoreboard players set $tile_drop_guard bot.interpreter 1

scoreboard players set $gamerule_success bot.interpreter 0
execute store success score $gamerule_success bot.interpreter run gamerule doTileDrops false
$execute if score $gamerule_success bot.interpreter matches 1 run setblock ~$(x) ~$(y) ~$(z) air destroy
execute if score $tile_drops bot.interpreter matches 1 run gamerule doTileDrops true

scoreboard players set $tile_drop_guard bot.interpreter 0
