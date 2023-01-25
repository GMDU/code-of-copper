data modify storage bot:io In set from storage bot:program InstructionStack[-1].args[0]
function bot:golem/evaluate
execute store result score .x bot.execution.pos run data get entity @s Pos[0]
execute store result score .y bot.execution.pos run data get entity @s Pos[1]
execute store result score .z bot.execution.pos run data get entity @s Pos[2]
execute store result score .dx bot.execution.pos run data get storage bot:io Out[0][0]
execute store result score .dy bot.execution.pos run data get storage bot:io Out[1][0]
execute store result score .dz bot.execution.pos run data get storage bot:io Out[2][0]

execute store result entity @s Pos[0] double 1 run scoreboard players operation .x bot.execution.pos += .dx bot.execution.pos
execute store result entity @s Pos[1] double 1 run scoreboard players operation .y bot.execution.pos += .dy bot.execution.pos
execute store result entity @s Pos[2] double 1 run scoreboard players operation .z bot.execution.pos += .dz bot.execution.pos
