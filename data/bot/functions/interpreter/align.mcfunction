execute store result score .x bot.execution.pos run data get entity @s Pos[0] 1
execute store result score .z bot.execution.pos run data get entity @s Pos[2] 1

execute store result entity @s Pos[0] double 1 run scoreboard players get .x bot.execution.pos
execute store result entity @s Pos[2] double 1 run scoreboard players get .z bot.execution.pos

execute store result score .x bot.execution.pos run data get entity @s Pos[0] 1000
execute store result score .z bot.execution.pos run data get entity @s Pos[2] 1000

scoreboard players add .x bot.execution.pos 500
scoreboard players add .z bot.execution.pos 500

execute store result entity @s Pos[0] double 0.001 run scoreboard players get .x bot.execution.pos
execute store result entity @s Pos[2] double 0.001 run scoreboard players get .z bot.execution.pos
