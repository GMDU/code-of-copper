data modify entity @s data.instructions[-1].isLooping set value true

execute store result score .condition bot.execution.variables run data get storage bot:interpreter/execution current.decoded_args[0].value
execute if score .condition bot.execution.variables matches 0 run data modify entity @s data.instructions[-1].isLooping set value false

execute unless score .condition bot.execution.variables matches 0 run data modify storage bot:dev_mode logs append value '[{"text": "While: evaluating condition ", "color": "green"},{"nbt":"current.decoded_args[0]", "storage": "bot:interpreter/execution","color":"yellow"},{"text": ", got ", "color": "green"}, {"text":"{type:\\"boolean\\",value:1b}","color":"yellow"}]'
execute if score .condition bot.execution.variables matches 0 run data modify storage bot:dev_mode logs append value '[{"text": "While: evaluating condition ", "color": "green"},{"nbt":"current.decoded_args[0]", "storage": "bot:interpreter/execution","color":"yellow"},{"text": ", got ", "color": "green"}, {"text":"{type:\\"boolean\\",value:0b}","color":"yellow"}]'

execute unless score .condition bot.execution.variables matches 0 run data modify entity @s data.instructions append from storage bot:interpreter/execution current.decoded_args[1]
execute unless score .condition bot.execution.variables matches 0 run function bot:interpreter/pipeline/execute/add_nesting
# This gets removed immediately
execute unless score .condition bot.execution.variables matches 0 run data modify entity @s data.instructions[-1].value prepend value {}
# While loop conditions need to be re-evaluated
data remove entity @s data.instructions[-2].value[0].decoded_args
