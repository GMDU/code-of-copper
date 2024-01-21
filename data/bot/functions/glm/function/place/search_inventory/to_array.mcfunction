data modify storage bot:private helpers.search_inventory.array append string storage bot:private helpers.search_inventory.current_id 0 1
data modify storage bot:private helpers.search_inventory.current_id set string storage bot:private helpers.search_inventory.current_id 1

execute store result score $size glm.interpreter run data get storage bot:private helpers.search_inventory.current_id
execute if score $size glm.interpreter matches 1.. run function bot:glm/function/place/search_inventory/to_array