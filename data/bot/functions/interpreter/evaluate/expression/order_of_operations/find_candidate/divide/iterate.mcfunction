execute if score .index bot.execution.variables = .a bot.execution.variables run scoreboard players set .found bot.execution.variables 1

scoreboard players add .index bot.execution.variables 2

execute if score .found bot.execution.variables matches 0 run function bot:interpreter/evaluate/expression/order_of_operations/find_candidate/divide/continue
execute if score .found bot.execution.variables matches 1 run function bot:interpreter/evaluate/expression/order_of_operations/find_candidate/divide/found

execute if score .found bot.execution.variables matches 0 if data storage bot:interpreter/expression/order_of_operations temp[0] run function bot:interpreter/evaluate/expression/order_of_operations/find_candidate/divide/iterate
