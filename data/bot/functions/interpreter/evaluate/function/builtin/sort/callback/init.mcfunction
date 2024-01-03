execute unless data storage bot:interpreter evaluate.return_value run function bot:interpreter/evaluate/function/builtin/sort/callback/proc
execute unless data storage bot:interpreter evaluate.return_value run return -1

data remove storage bot:utils sort.break

execute store result score $sort bot.interpreter run data get storage bot:interpreter evaluate.return_value.value
data remove storage bot:interpreter evaluate.return_value

scoreboard players set $result bot.utils.sort -1
execute if score $sort bot.interpreter matches 1.. run scoreboard players set $result bot.utils.sort 1
