data modify storage bot:interpreter helpers.search_inventory.target set from storage bot:interpreter helpers.search_inventory.key.namespace
data modify storage bot:interpreter helpers.search_inventory.target append value ":"
data modify storage bot:interpreter helpers.search_inventory.target append from storage bot:interpreter helpers.search_inventory.key.id[]

data modify storage bot:interpreter helpers.search_inventory.output set value {slot:-1b,id:"minecraft:air"}

scoreboard players set $slot bot.interpreter 0

function bot:interpreter/evaluate/function/helpers/search_inventory/iterate
