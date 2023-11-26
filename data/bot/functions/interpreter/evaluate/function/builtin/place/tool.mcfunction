execute if block ~ ~ ~ #bot:unbreakable run return -1


# 704a8f67-58d9-429d-8535-8eb0957136ca
summon armor_stand ~ ~ ~ {UUID:[I; 1883934567, 1490633373, -2060087632, -1787742518],Invisible:1b,Marker:1b,Tags:["bot.temp"]}

data modify entity 704a8f67-58d9-429d-8535-8eb0957136ca HandItems[0] set from storage bot:interpreter helpers.search_inventory.output
execute as 704a8f67-58d9-429d-8535-8eb0957136ca run loot replace entity @s weapon.offhand mine ~ ~ ~ mainhand

execute store result score $damage bot.interpreter run data get entity 704a8f67-58d9-429d-8535-8eb0957136ca HandItems[0].tag.Damage
execute store result entity 704a8f67-58d9-429d-8535-8eb0957136ca HandItems[0].tag.Damage int 1 run scoreboard players add $damage bot.interpreter 1
execute as 704a8f67-58d9-429d-8535-8eb0957136ca if predicate bot:is_broken run item replace entity @s weapon.mainhand with air
data modify storage bot:interpreter temp.item set from entity 704a8f67-58d9-429d-8535-8eb0957136ca HandItems[0]
function bot:interpreter/evaluate/function/builtin/place/insert_back/init

data modify storage moxlib:api/helpers/inventory/insert target set from entity @s Items
data modify storage moxlib:api/helpers/inventory/insert item set from entity 704a8f67-58d9-429d-8535-8eb0957136ca HandItems[1]
function moxlib:api/helpers/inventory/insert

data modify entity @s Items set from storage moxlib:api/helpers/inventory/insert output.inventory

execute if data storage moxlib:api/helpers/inventory/insert output.overflow run summon item ~0.5 ~ ~0.5 {Item:{Count:1b,id:"minecraft:stick"},Tags:["bot.overflow"]}
execute if data storage moxlib:api/helpers/inventory/insert output.overflow run data modify entity @e[type=item,tag=bot.overflow,limit=1] Item merge from storage moxlib:api/helpers/inventory/insert output.overflow
execute if data storage moxlib:api/helpers/inventory/insert output.overflow store result entity @e[type=item,tag=bot.overflow,limit=1] Item.Count byte 1 run data get storage moxlib:api/helpers/inventory/insert output.overflow.Count
tag @e[tag=bot.overflow] remove bot.overflow

kill 704a8f67-58d9-429d-8535-8eb0957136ca

execute store result score $tile_drops bot.interpreter run gamerule doTileDrops
execute if score $tile_drops bot.interpreter matches 1 run scoreboard players set $tile_drop_guard bot.interpreter 1

scoreboard players set $gamerule_success bot.interpreter 0
execute store success score $gamerule_success bot.interpreter run gamerule doTileDrops false
execute if score $gamerule_success bot.interpreter matches 1 run setblock ~ ~ ~ air destroy
execute if score $tile_drops bot.interpreter matches 1 run gamerule doTileDrops true

scoreboard players set $tile_drop_guard bot.interpreter 0
