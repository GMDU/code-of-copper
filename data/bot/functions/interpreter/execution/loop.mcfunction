data modify entity @s data.instructions[-1].isLooping set value true
execute unless data entity @s data.instructions[-1].loops run data modify entity @s data.instructions[-1].loops set from storage bot:interpreter/execution current.decoded_args[0].value
execute store result score .loops bot.execution.variables run data get entity @s data.instructions[-1].loops

execute store result entity @s data.instructions[-1].loops int 1 run scoreboard players remove .loops bot.execution.variables 1

data modify storage bot:dev_mode logs append value '[{"text": "Loop: looping ", "color": "green"},{"nbt":"current.decoded_args[0]", "storage": "bot:interpreter/execution","color":"yellow"},{"text": " times, ", "color": "green"}, {"score":{"name":".loops","objective":"bot.execution.variables"},"color":"yellow"},{"text": " left.", "color": "green"}]'

execute unless score .loops bot.execution.variables matches ..-1 run data modify entity @s data.instructions append from storage bot:interpreter/execution current.decoded_args[1]
execute unless score .loops bot.execution.variables matches ..-1 run function bot:interpreter/pipeline/execute/add_nesting
# This gets removed immediately
execute unless score .loops bot.execution.variables matches ..-1 run data modify entity @s data.instructions[-1].value prepend value {}

execute if score .loops bot.execution.variables matches ..0 run data modify entity @s data.instructions[-1].isLooping set value false
