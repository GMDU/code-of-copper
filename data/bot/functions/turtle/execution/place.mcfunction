data modify storage bot:io In set from storage bot:program Current.vector3D
function bot:turtle/evaluate
execute store result score .x bot.pos run data get entity @s Pos[0]
execute store result score .y bot.pos run data get entity @s Pos[1]
execute store result score .z bot.pos run data get entity @s Pos[2]
execute store result score .dx bot.pos run data get storage bot:io Out[0]
execute store result score .dy bot.pos run data get storage bot:io Out[1]
execute store result score .dz bot.pos run data get storage bot:io Out[2]

scoreboard players operation .old_x bot.pos = .x bot.pos
scoreboard players operation .old_y bot.pos = .y bot.pos
scoreboard players operation .old_z bot.pos = .z bot.pos

execute store result entity @s Pos[0] double 1 run scoreboard players operation .x bot.pos += .dx bot.pos
execute store result entity @s Pos[1] double 1 run scoreboard players operation .y bot.pos += .dy bot.pos
execute store result entity @s Pos[2] double 1 run scoreboard players operation .z bot.pos += .dz bot.pos

data modify storage bot:io In set from storage bot:program Current.slot
function bot:turtle/evaluate
data modify storage bot:io In set from storage bot:io Out
function bot:turtle/execution/place/get_item_at_position_in_inventory

data modify storage bot:io In set from storage bot:io Out
execute at @s run function bot:turtle/execution/place/place_block_from_item

execute store result entity @s Pos[0] double 1 run scoreboard players get .old_x bot.pos
execute store result entity @s Pos[1] double 1 run scoreboard players get .old_y bot.pos
execute store result entity @s Pos[2] double 1 run scoreboard players get .old_z bot.pos
