data modify storage bot:private helpers.search_inventory.target set from storage bot:private helpers.search_inventory.key.namespace
data modify storage bot:private helpers.search_inventory.target append value ":"
data modify storage bot:private helpers.search_inventory.target append from storage bot:private helpers.search_inventory.key.id[]

data modify storage bot:private helpers.search_inventory.output set value {slot:-1b,id:"minecraft:air"}

scoreboard players set $slot glm.interpreter 0

function bot:glm/function/place/search_inventory/iterate
