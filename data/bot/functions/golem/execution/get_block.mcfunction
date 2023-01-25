data modify storage bot:io In set from storage bot:program InstructionStack[-1].args[0]
function bot:golem/evaluate

execute unless data storage bot:io Out{type:"array"} run data modify storage bot:program Error set value ["getBlock: expected type array for vector3D parameter, but got type "]
execute unless data storage bot:io Out{type:"array"} run data modify storage bot:program Error append from storage bot:io Out.type

execute store result score .x bot.execution.pos run data get entity @s Pos[0]
execute store result score .y bot.execution.pos run data get entity @s Pos[1]
execute store result score .z bot.execution.pos run data get entity @s Pos[2]
execute store result score .dx bot.execution.pos run data get storage bot:io Out.value[0].value
execute store result score .dy bot.execution.pos run data get storage bot:io Out.value[1].value
execute store result score .dz bot.execution.pos run data get storage bot:io Out.value[2].value

scoreboard players operation .old_x bot.execution.pos = .x bot.execution.pos
scoreboard players operation .old_y bot.execution.pos = .y bot.execution.pos
scoreboard players operation .old_z bot.execution.pos = .z bot.execution.pos

execute store result entity @s Pos[0] double 1 run scoreboard players operation .x bot.execution.pos += .dx bot.execution.pos
execute store result entity @s Pos[1] double 1 run scoreboard players operation .y bot.execution.pos += .dy bot.execution.pos
execute store result entity @s Pos[2] double 1 run scoreboard players operation .z bot.execution.pos += .dz bot.execution.pos

execute at @s run function moxlib:api/helpers/block/get

tellraw @a {"nbt":"{}", "storage": "moxlib:api/helpers/block/get"}

data modify storage bot:variables varName set value "BLOCK"
execute if data storage moxlib:api/helpers/block/get data run data modify storage bot:variables value set from storage moxlib:api/helpers/block/get data
execute unless data storage moxlib:api/helpers/block/get data run data modify storage bot:variables value set value {id:"minecraft:air"}
execute unless data storage moxlib:api/helpers/block/get data run data modify storage bot:variables value.id set from storage moxlib:api/helpers/block/get block

function bot:golem/execution/let/set_variable

execute store result entity @s Pos[0] double 1 run scoreboard players get .old_x bot.execution.pos
execute store result entity @s Pos[1] double 1 run scoreboard players get .old_y bot.execution.pos
execute store result entity @s Pos[2] double 1 run scoreboard players get .old_z bot.execution.pos
