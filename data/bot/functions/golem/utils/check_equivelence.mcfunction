execute store result score .different bot.execution.variables run data modify storage bot:io In set from storage bot:io In2
execute if score .different bot.execution.variables matches 0 run data modify storage bot:io Out set value 1
execute if score .different bot.execution.variables matches 1 run data modify storage bot:io Out set value 0
