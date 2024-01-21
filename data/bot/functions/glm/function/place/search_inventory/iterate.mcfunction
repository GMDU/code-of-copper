data modify storage bot:private helpers.search_inventory.current set from storage bot:private helpers.search_inventory.inventory[0]
data modify storage bot:private helpers.search_inventory.current_id set from storage bot:private helpers.search_inventory.inventory[0].id
data remove storage bot:private helpers.search_inventory.inventory[0]

data modify storage bot:private helpers.search_inventory.output.id set from storage bot:private helpers.search_inventory.current_id

data modify storage bot:private helpers.search_inventory.array set value []

function bot:glm/function/place/search_inventory/to_array

execute store result score $check glm.interpreter run data modify storage bot:private helpers.search_inventory.array set from storage bot:private helpers.search_inventory.target

execute if score $check glm.interpreter matches 0 run data modify storage bot:private helpers.search_inventory.output set from storage bot:private helpers.search_inventory.current
execute if score $check glm.interpreter matches 0 store result storage bot:private helpers.search_inventory.output.slot byte 1 run scoreboard players get $slot glm.interpreter
execute if score $check glm.interpreter matches 0 run return -1

execute unless data storage bot:private helpers.search_inventory.inventory[] run return -1

scoreboard players add $slot glm.interpreter 1
function bot:glm/function/place/search_inventory/iterate
