execute store result score $condition bot.interpreter run data get storage bot:interpreter evaluate.stack[-1].evaluated_args[0].value
execute if data storage bot:interpreter evaluate.stack[-1].evaluated_args[0].value store result score $condition bot.interpreter run data get storage bot:interpreter evaluate.stack[-1].evaluated_args[0].value
execute if score $condition bot.interpreter matches 0 run return -1

data modify storage bot:interpreter evaluate.next set from storage bot:interpreter evaluate.stack[-1].evaluated_args[1]
data remove storage bot:interpreter evaluate.stack[-1].metadata.status