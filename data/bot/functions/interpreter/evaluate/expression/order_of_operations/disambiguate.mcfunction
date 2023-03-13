function bot:interpreter/evaluate/expression/order_of_operations/find_candidate

data modify storage bot:interpreter/expression/order_of_operations new_expression set value {type: "expression", value: []}
data modify storage bot:interpreter/expression/order_of_operations new_expression.value append from storage bot:interpreter/expression/order_of_operations before[]
data modify storage bot:interpreter/expression/order_of_operations new_expression.value append value {type: "binary_operation", a: {}, b: {}, op: {}}

data modify storage bot:interpreter/expression/order_of_operations new_expression.value[-1].op set from storage bot:interpreter/expression/order_of_operations candidate_expression.op

data modify storage bot:interpreter/expression/order_of_operations new_expression.value[-1].a set from storage bot:interpreter/expression/order_of_operations candidate_expression.a
data modify storage bot:interpreter/expression/order_of_operations new_expression.value[-1].b set from storage bot:interpreter/expression/order_of_operations candidate_expression.b
data modify storage bot:interpreter/expression/order_of_operations new_expression.value append from storage bot:interpreter/expression/order_of_operations after[]

data modify storage bot:interpreter/expression/order_of_operations stack append from storage bot:interpreter/expression/order_of_operations new_expression
function bot:interpreter/evaluate/expression/order_of_operations/main
