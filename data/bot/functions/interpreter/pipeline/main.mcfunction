scoreboard players set .decode_execute bot.pipeline 0
execute if data entity @s data{pipeline_stage:"execute"} run scoreboard players set .decode_execute bot.pipeline 1

execute if score .decode_execute bot.pipeline matches 0 run function bot:interpreter/pipeline/decode
execute if score .decode_execute bot.pipeline matches 1 unless data storage bot:interpreter/pipeline {no_execution:true} run function bot:interpreter/pipeline/execute

execute if score .decode_execute bot.pipeline matches 0 run data modify entity @s data.pipeline_stage set value "execute"
execute if score .decode_execute bot.pipeline matches 1 run data modify entity @s data.pipeline_stage set value "decode"

execute if score .decode_execute bot.pipeline matches 1 run data remove storage bot:interpreter/pipeline no_execution
