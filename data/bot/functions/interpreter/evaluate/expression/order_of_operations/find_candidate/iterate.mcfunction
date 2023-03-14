execute store result score .precedence bot.execution.variables run data get storage bot:interpreter/expression/order_of_operations temp[1].precedence
execute store result score .candidate_precedence bot.execution.variables run data get storage bot:interpreter/expression/order_of_operations candidate_expression.precedence

execute if score .precedence bot.execution.variables < .candidate_precedence bot.execution.variables run function bot:interpreter/evaluate/expression/order_of_operations/find_candidate/select

data remove storage bot:interpreter/expression/order_of_operations temp[0]
data remove storage bot:interpreter/expression/order_of_operations temp[0]

scoreboard players add .index bot.execution.variables 2

execute if data storage bot:interpreter/expression/order_of_operations temp[2] run function bot:interpreter/evaluate/expression/order_of_operations/find_candidate/iterate
