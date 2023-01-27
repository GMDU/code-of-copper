data modify storage bot:io In set from storage bot:program InstructionStack[-1].args[0]
function bot:golem/evaluate

function bot:golem/execution/move_to_position

scoreboard players operation .old_x bot.execution.pos = .x bot.execution.pos
scoreboard players operation .old_y bot.execution.pos = .y bot.execution.pos
scoreboard players operation .old_z bot.execution.pos = .z bot.execution.pos

#slot
data modify storage bot:io In set from storage bot:program InstructionStack[-1].args[0]
function bot:golem/evaluate

data modify storage bot:io In set from storage bot:io Out.value
data modify storage bot:io Out set value {recieved:false}
function bot:golem/execution/place/get_item_at_position_in_inventory

data modify storage bot:io In set from storage bot:io Out
execute unless data storage bot:io Out{recieved:false} unless data storage bot:program Error at @s run function bot:golem/execution/place/place_block_from_item

execute store result entity @s Pos[0] double 1 run scoreboard players get .old_x bot.execution.pos
execute store result entity @s Pos[1] double 1 run scoreboard players get .old_y bot.execution.pos
execute store result entity @s Pos[2] double 1 run scoreboard players get .old_z bot.execution.pos
