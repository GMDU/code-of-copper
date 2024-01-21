# Marker UUID: 48478533-d8a3-459d-a948-248ada5a6490

execute at @s run summon marker ~ ~ ~ {UUID:[I; 1212646707, -660388451, -1454889846, -631610224]}

execute store result score $x bot.interpreter run data get entity 48478533-d8a3-459d-a948-248ada5a6490 Pos[0]
execute store result score $dx bot.interpreter run data get storage glm:api/interpreter/function execute.args[0].value
execute if score $dx bot.interpreter matches 6.. run scoreboard players set $dx bot.interpreter 5
execute if score $dx bot.interpreter matches ..-6 run scoreboard players set $dx bot.interpreter -5
execute store result entity 48478533-d8a3-459d-a948-248ada5a6490 Pos[0] double 1 run scoreboard players operation $x bot.interpreter += $dx bot.interpreter

execute store result score $y bot.interpreter run data get entity 48478533-d8a3-459d-a948-248ada5a6490 Pos[1]
execute store result score $dy bot.interpreter run data get storage glm:api/interpreter/function execute.args[1].value
execute if score $dy bot.interpreter matches 6.. run scoreboard players set $dy bot.interpreter 5
execute if score $dy bot.interpreter matches ..-6 run scoreboard players set $dy bot.interpreter -5
execute store result entity 48478533-d8a3-459d-a948-248ada5a6490 Pos[1] double 1 run scoreboard players operation $y bot.interpreter += $dy bot.interpreter

execute store result score $z bot.interpreter run data get entity 48478533-d8a3-459d-a948-248ada5a6490 Pos[2]
execute store result score $dz bot.interpreter run data get storage glm:api/interpreter/function execute.args[2].value
execute if score $dz bot.interpreter matches 6.. run scoreboard players set $dz bot.interpreter 5
execute if score $dz bot.interpreter matches ..-6 run scoreboard players set $dz bot.interpreter -5
execute store result entity 48478533-d8a3-459d-a948-248ada5a6490 Pos[2] double 1 run scoreboard players operation $z bot.interpreter += $dz bot.interpreter

execute at 48478533-d8a3-459d-a948-248ada5a6490 run function moxlib:api/helpers/block/get

kill 48478533-d8a3-459d-a948-248ada5a6490

data modify storage moxlib:api/string/to_array target set string storage moxlib:api/helpers/block/get output.block 10
function moxlib:api/string/to_array

data modify storage glm:api/interpreter/function execute.return set value {type: "literal", variant: "resource", value: true, namespace:[m,i,n,e,c,r,a,f,t]}
data modify storage glm:api/interpreter/function execute.return.id set from storage moxlib:api/string/to_array output
