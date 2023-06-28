execute store result score $sleep_time bot.interpreter run data get storage bot:interpreter evaluate.stack[-1].args[0].value

execute store result storage bot:interpreter evaluate.stack[-1].args[0].value int 1 run scoreboard players remove $sleep_time bot.interpreter 1

execute if score $sleep_time bot.interpreter matches 1.. run data modify storage bot:interpreter evaluate.loop set value true
