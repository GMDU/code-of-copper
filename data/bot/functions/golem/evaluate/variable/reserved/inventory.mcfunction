data modify storage bot:variables Inventory set from entity @s Items
data modify storage bot:io Out set value {type:"array", value: []}
function bot:golem/evaluate/variable/inventory_loop
