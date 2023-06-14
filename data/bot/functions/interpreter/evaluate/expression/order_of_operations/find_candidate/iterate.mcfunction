execute store result score .precedence bot.interpreter run data get storage bot:interpreter evaluate.order_of_operations.temp[1].precedence
execute store result score .candidate_precedence bot.interpreter run data get storage bot:interpreter evaluate.order_of_operations.candidate_expression.precedence

execute if score .precedence bot.interpreter < .candidate_precedence bot.interpreter run function bot:interpreter/evaluate/expression/order_of_operations/find_candidate/select

data modify storage bot:interpreter evaluate.order_of_operations.before_current append from storage bot:interpreter evaluate.order_of_operations.temp[0]
data remove storage bot:interpreter evaluate.order_of_operations.temp[0]
data modify storage bot:interpreter evaluate.order_of_operations.before_current append from storage bot:interpreter evaluate.order_of_operations.temp[0]
data remove storage bot:interpreter evaluate.order_of_operations.temp[0]

execute if data storage bot:interpreter evaluate.order_of_operations.temp[1] run function bot:interpreter/evaluate/expression/order_of_operations/find_candidate/iterate
