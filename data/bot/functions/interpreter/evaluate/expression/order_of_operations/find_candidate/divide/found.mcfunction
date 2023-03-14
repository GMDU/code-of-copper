data modify storage bot:interpreter/expression/order_of_operations candidate_expression.a set from storage bot:interpreter/expression/order_of_operations temp[0]
data modify storage bot:interpreter/expression/order_of_operations candidate_expression.b set from storage bot:interpreter/expression/order_of_operations temp[2]

data remove storage bot:interpreter/expression/order_of_operations temp[0]
data remove storage bot:interpreter/expression/order_of_operations temp[0]
data remove storage bot:interpreter/expression/order_of_operations temp[0]

data modify storage bot:interpreter/expression/order_of_operations after set value []
data modify storage bot:interpreter/expression/order_of_operations after set from storage bot:interpreter/expression/order_of_operations temp
