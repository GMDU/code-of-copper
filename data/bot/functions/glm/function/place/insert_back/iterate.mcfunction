execute if score $slot bot.interpreter = $target_slot bot.interpreter run data modify storage bot:private temp.result append from storage bot:private temp.item
execute if score $slot bot.interpreter = $target_slot bot.interpreter run data remove storage bot:private temp.inventory[0]
execute if score $slot bot.interpreter = $target_slot bot.interpreter run return -1

execute unless data storage bot:private temp.inventory[] run return -1

data modify storage bot:private temp.result append from storage bot:private temp.inventory[0]
data remove storage bot:private temp.inventory[0]
scoreboard players add $slot bot.interpreter 1

function bot:glm/function/place/insert_back/iterate
