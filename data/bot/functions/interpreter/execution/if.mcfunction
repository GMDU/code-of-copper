execute store result score .condition bot.execution.variables run data get storage bot:interpreter/execution current.decoded_args[0].value

execute unless score .condition bot.execution.variables matches 0 run data modify storage bot:dev_mode logs append value '[{"text": "If: evaluating condition ", "color": "green"},{"nbt":"current.decoded_args[0]", "storage": "bot:interpreter/execution","color":"yellow"},{"text": ", got ", "color": "green"}, {"text":"{type:\\"boolean\\",value:1b}","color":"yellow"}]'
execute if score .condition bot.execution.variables matches 0 run data modify storage bot:dev_mode logs append value '[{"text": "If: evaluating condition ", "color": "green"},{"nbt":"current.decoded_args[0]", "storage": "bot:interpreter/execution","color":"yellow"},{"text": ", got ", "color": "green"}, {"text":"{type:\\"boolean\\",value:0b}","color":"yellow"}]'

#codeBlock
execute unless score .condition bot.execution.variables matches 0 as @s[type=marker,tag=bot.golem.brain] run data remove entity @s data.instructions[-1].value[0]
execute unless score .condition bot.execution.variables matches 0 as @s[type=marker,tag=bot.golem.brain] run data modify entity @s data.instructions append from storage bot:interpreter/execution current.decoded_args[1]
execute unless score .condition bot.execution.variables matches 0 as @s[type=marker,tag=bot.golem.brain] run function bot:interpreter/pipeline/execute/add_nesting
# This gets removed immediately
execute unless score .condition bot.execution.variables matches 0 as @s[type=marker,tag=bot.golem.brain] run data modify entity @s data.instructions[-1].value prepend value {}
