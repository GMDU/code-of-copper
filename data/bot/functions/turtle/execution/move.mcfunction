data modify storage bot:io In set from storage bot:program Current.vector3D
function bot:turtle/evaluate
execute store result score .x bot.pos run data get entity @s Pos[0]
execute store result score .y bot.pos run data get entity @s Pos[1]
execute store result score .z bot.pos run data get entity @s Pos[2]
execute store result score .dx bot.pos run data get storage bot:io Out[0]
execute store result score .dy bot.pos run data get storage bot:io Out[1]
execute store result score .dz bot.pos run data get storage bot:io Out[2]

execute store result entity @s Pos[0] double 1 run scoreboard players operation .x bot.pos += .dx bot.pos
execute store result entity @s Pos[1] double 1 run scoreboard players operation .y bot.pos += .dy bot.pos
execute store result entity @s Pos[2] double 1 run scoreboard players operation .z bot.pos += .dz bot.pos
