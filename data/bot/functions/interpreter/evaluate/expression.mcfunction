data modify storage bot:interpreter/expression/order_of_operations input set from storage bot:interpreter/evaluate stack[-1]
function bot:interpreter/evaluate/expression/order_of_operations

# Remove itself and replace with dummy
data modify storage bot:interpreter/evaluate stack[-1] set value {type:"delayed",variant:"expression"}

data modify storage bot:interpreter/evaluate stack append from storage bot:interpreter/expression/order_of_operations output

function bot:interpreter/evaluate_stack
