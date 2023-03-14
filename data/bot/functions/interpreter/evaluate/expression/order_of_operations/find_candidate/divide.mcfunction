execute store result score .a bot.execution.variables run data get storage bot:interpreter/expression/order_of_operations candidate_expression.a
execute store result score .b bot.execution.variables run data get storage bot:interpreter/expression/order_of_operations candidate_expression.b
scoreboard players set .index bot.execution.variables 0
scoreboard players set .found bot.execution.variables 0
data modify storage bot:interpreter/expression/order_of_operations temp set from storage bot:interpreter/expression/order_of_operations current.value

function bot:interpreter/evaluate/expression/order_of_operations/find_candidate/divide/iterate
