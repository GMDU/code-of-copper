scoreboard players set $slot bot.interpreter 0
execute store result score $target_slot bot.interpreter run data get storage bot:private helpers.search_inventory.output.slot
execute store result storage bot:private temp.item.Slot byte 1 run scoreboard players get $target_slot bot.interpreter
data modify storage bot:private temp.inventory set from entity @s Items
data modify storage bot:private temp.result set value []

function bot:glm/function/place/insert_back/iterate

data modify storage bot:private temp.result append from storage bot:private temp.inventory[]
data modify entity @s Items set from storage bot:private temp.result
