data modify entity @s data.instructions[-1].isLooping set value true

execute unless data entity @s data.instructions[-1].sleepTime run data modify entity @s data.instructions[-1].sleepTime set from storage bot:interpreter/execution current.decoded_args[0].value
execute store result score .sleep_time bot.execution.variables run data get entity @s data.instructions[-1].sleepTime
execute store result entity @s data.instructions[-1].sleepTime int 1 run scoreboard players remove .sleep_time bot.execution.variables 1

data modify storage bot:dev_mode logs append value '[{"text": "Sleep: sleeping for ", "color": "green"},{"nbt":"current.decoded_args[0]", "storage": "bot:interpreter/execution","color":"yellow"},{"text": " ticks, ", "color": "green"}, {"score":{"name":".sleep_time","objective":"bot.execution.variables"},"color":"yellow"},{"text": " left.", "color": "green"}]'

execute if score .sleep_time bot.execution.variables matches ..0 run data modify entity @s data.instructions[-1].isLooping set value false

execute on passengers as @s[type=marker,tag=bot.golem.brain] run data modify entity @s data.return_value set value {type:"undefined",value:undefined}

# Remove argument to prevent duplication
data remove entity @s data.instructions[-1].value[0].decoded_args[0]
