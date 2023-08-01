scoreboard players set $slot bot.interpreter 0
execute store result score $target_slot bot.interpreter run data get storage bot:interpreter helpers.search_inventory.output.slot
execute store result storage bot:interpreter temp.item.Slot byte 1 run scoreboard players get $target_slot bot.interpreter
data modify storage bot:interpreter temp.inventory set from entity @s Items
data modify storage bot:interpreter temp.result set value []

function bot:interpreter/evaluate/function/builtin/place/insert_back/iterate

data modify storage bot:interpreter temp.result append from storage bot:interpreter temp.inventory[]
data modify entity @s Items set from storage bot:interpreter temp.result
