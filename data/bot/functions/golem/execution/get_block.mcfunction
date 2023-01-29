data modify storage bot:io In set from storage bot:program Current.args[0]
function bot:golem/evaluate

function bot:golem/execution/move_to_position

execute at @s run function moxlib:api/helpers/block/get
data modify storage moxlib:api/string/to_array target set from storage moxlib:api/helpers/block/get output.block
function moxlib:api/string/to_array


data modify storage bot:variables varName set value ["B","L","O","C","K"]
data modify storage bot:variables value set value {type: "string", value: "minecraft:air"}
data modify storage bot:variables value.value set from storage moxlib:api/string/to_array output
function bot:golem/execution/let/set_variable

function bot:golem/execution/move_back
