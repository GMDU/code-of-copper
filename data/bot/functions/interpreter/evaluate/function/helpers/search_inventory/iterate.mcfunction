data modify storage bot:interpreter helpers.search_inventory.current set from storage bot:interpreter helpers.search_inventory.inventory[0]
data modify storage bot:interpreter helpers.search_inventory.current_id set from storage bot:interpreter helpers.search_inventory.inventory[0].id
data remove storage bot:interpreter helpers.search_inventory.inventory[0]

data modify storage bot:interpreter helpers.search_inventory.output.id set from storage bot:interpreter helpers.search_inventory.current_id

data modify storage bot:interpreter helpers.search_inventory.array set value []

function bot:interpreter/evaluate/function/helpers/search_inventory/to_array

execute store result score $check bot.interpreter run data modify storage bot:interpreter helpers.search_inventory.array set from storage bot:interpreter helpers.search_inventory.target

execute if score $check bot.interpreter matches 0 run data modify storage bot:interpreter helpers.search_inventory.output set from storage bot:interpreter helpers.search_inventory.current
execute if score $check bot.interpreter matches 0 store result storage bot:interpreter helpers.search_inventory.output.slot byte 1 run scoreboard players get $slot bot.interpreter
execute if score $check bot.interpreter matches 0 run return -1

execute unless data storage bot:interpreter helpers.search_inventory.inventory[] run return -1

scoreboard players add $slot bot.interpreter 1
function bot:interpreter/evaluate/function/helpers/search_inventory/iterate
