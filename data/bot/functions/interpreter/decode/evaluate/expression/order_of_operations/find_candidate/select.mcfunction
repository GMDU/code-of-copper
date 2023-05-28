data modify storage bot:interpreter evaluate.order_of_operations.candidate_expression.precedence set from storage bot:interpreter evaluate.order_of_operations.temp[1].precedence

data modify storage bot:interpreter evaluate.order_of_operations.candidate_expression.a set from storage bot:interpreter evaluate.order_of_operations.temp[0]
data modify storage bot:interpreter evaluate.order_of_operations.candidate_expression.op set from storage bot:interpreter evaluate.order_of_operations.temp[1]
data modify storage bot:interpreter evaluate.order_of_operations.candidate_expression.b set from storage bot:interpreter evaluate.order_of_operations.temp[2]

data modify storage bot:interpreter evaluate.order_of_operations.before set from storage bot:interpreter evaluate.order_of_operations.before_current
data modify storage bot:interpreter evaluate.order_of_operations.after set from storage bot:interpreter evaluate.order_of_operations.temp

data remove storage bot:interpreter evaluate.order_of_operations.after[0]
data remove storage bot:interpreter evaluate.order_of_operations.after[0]
data remove storage bot:interpreter evaluate.order_of_operations.after[0]
