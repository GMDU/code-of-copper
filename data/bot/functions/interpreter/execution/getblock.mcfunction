function bot:interpreter/execution/getblock/move_to_position

execute at @s run function moxlib:api/helpers/block/get
data modify storage moxlib:api/string/to_array target set from storage moxlib:api/helpers/block/get output.block
function moxlib:api/string/to_array

data modify storage bot:dev_mode logs append value '[{"text": "Getblock: getting block, got ", "color": "green"},{"nbt":"output", "storage": "moxlib:api/string/to_array","color":"yellow","interpret":true}]'

data modify storage bot:interpreter/execution varName set value ["B","L","O","C","K"]
data modify storage bot:interpreter/execution value set value {type: "string", value: ["m","i","n","e","c","r","a","f","t",":","a","i","r"]}
data modify storage bot:interpreter/execution value.value set from storage moxlib:api/string/to_array output
function bot:interpreter/execution/let/set_variable

function bot:interpreter/execution/move_back
