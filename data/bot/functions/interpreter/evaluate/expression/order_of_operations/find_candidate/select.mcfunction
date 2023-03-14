data modify storage bot:interpreter/expression/order_of_operations candidate_expression.precedence set from storage bot:interpreter/expression/order_of_operations temp[1].precedence
execute store result storage bot:interpreter/expression/order_of_operations candidate_expression.a int 1 run scoreboard players remove .index bot.execution.variables 1
data modify storage bot:interpreter/expression/order_of_operations candidate_expression.op set from storage bot:interpreter/expression/order_of_operations temp[1]
execute store result storage bot:interpreter/expression/order_of_operations candidate_expression.b int 1 run scoreboard players add .index bot.execution.variables 2

scoreboard players remove .index bot.execution.variables 1
