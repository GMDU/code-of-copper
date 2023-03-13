data modify storage bot:interpreter/expression/order_of_operations stack set value []
data modify storage bot:interpreter/expression/order_of_operations stack append from storage bot:interpreter/expression/order_of_operations input

function bot:interpreter/evaluate/expression/order_of_operations/main
