execute store result score .x bot.execution.pos run data get entity @s Pos[0] 1000
execute store result score .y bot.execution.pos run data get entity @s Pos[1] 1000
execute store result score .z bot.execution.pos run data get entity @s Pos[2] 1000
execute store result score .dx bot.execution.pos run data get storage bot:io Out.value[0].value 1000
execute store result score .dy bot.execution.pos run data get storage bot:io Out.value[1].value 1000
execute store result score .dz bot.execution.pos run data get storage bot:io Out.value[2].value 1000
function bot:golem/execution/move/assert_in_range

scoreboard players operation .old_x bot.execution.pos = .x bot.execution.pos
scoreboard players operation .old_y bot.execution.pos = .y bot.execution.pos
scoreboard players operation .old_z bot.execution.pos = .z bot.execution.pos

execute unless data storage bot:interpreter/execution Error store result entity @s Pos[0] double 0.001 run scoreboard players operation .x bot.execution.pos += .dx bot.execution.pos
execute at @s unless data storage bot:interpreter/execution Error unless block ~ ~-0.01 ~ #bot:traversable store result entity @s Pos[1] double 0.001 run scoreboard players operation .y bot.execution.pos += .dy bot.execution.pos
execute unless data storage bot:interpreter/execution Error store result entity @s Pos[2] double 0.001 run scoreboard players operation .z bot.execution.pos += .dz bot.execution.pos
