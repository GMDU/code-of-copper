data modify storage bot:interpreter/expression/order_of_operations input set from storage bot:interpreter/evaluate stack[-1]
function bot:interpreter/evaluate/expression/order_of_operations
data modify storage bot:interpreter/evaluate stack append from storage bot:interpreter/expression/order_of_operations output

function bot:interpreter/_evaluate
