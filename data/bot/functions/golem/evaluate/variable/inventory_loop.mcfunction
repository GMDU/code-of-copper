data modify storage bot:io Out.value append value {type:"string",value:""}
data modify storage moxlib:api/string/to_array target set from storage bot:interpreter/evaluate Inventory[0].id
function moxlib:api/string/to_array
data modify storage bot:io Out.value[-1].value set from storage moxlib:api/string/to_array output
data remove storage bot:interpreter/evaluate Inventory[0]
execute if data storage bot:interpreter/evaluate Inventory[0] run function bot:golem/evaluate/variable/inventory_loop
