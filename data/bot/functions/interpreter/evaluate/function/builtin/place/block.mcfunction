execute unless block ~ ~ ~ #minecraft:replaceable run return -1

data modify storage moxlib:api/helpers/block/place target set value {Name:""}
data modify storage moxlib:api/helpers/block/place target.Name set from storage bot:interpreter helpers.search_inventory.output.id
function moxlib:api/helpers/block/place

data modify storage bot:interpreter temp.item set from storage bot:interpreter helpers.search_inventory.output
execute store result score $count bot.interpreter run data get storage bot:interpreter temp.item.Count
execute store result storage bot:interpreter temp.item.Count byte 1 run scoreboard players remove $count bot.interpreter 1
function bot:interpreter/evaluate/function/builtin/place/insert_back/init
