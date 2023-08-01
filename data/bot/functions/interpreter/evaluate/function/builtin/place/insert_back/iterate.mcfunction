execute if score $slot bot.interpreter = $target_slot bot.interpreter run data modify storage bot:interpreter temp.result append from storage bot:interpreter temp.item
execute if score $slot bot.interpreter = $target_slot bot.interpreter run data remove storage bot:interpreter temp.inventory[0]
execute if score $slot bot.interpreter = $target_slot bot.interpreter run return -1

execute unless data storage bot:interpreter temp.inventory[] run return -1

data modify storage bot:interpreter temp.result append from storage bot:interpreter temp.inventory[0]
data remove storage bot:interpreter temp.inventory[0]
scoreboard players add $slot bot.interpreter 1

function bot:interpreter/evaluate/function/builtin/place/insert_back/iterate
