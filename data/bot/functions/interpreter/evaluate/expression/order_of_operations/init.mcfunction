execute unless data storage bot:interpreter evaluate.order_of_operations.current[1] run data modify storage bot:interpreter evaluate.order_of_operations.result set from storage bot:interpreter evaluate.order_of_operations.current[0]
execute unless data storage bot:interpreter evaluate.order_of_operations.current[1] run return -1

function bot:interpreter/evaluate/expression/order_of_operations/find_candidate/init

data modify storage bot:interpreter evaluate.order_of_operations.result set value {type: "expression", value: []}
data modify storage bot:interpreter evaluate.order_of_operations.result.value append from storage bot:interpreter evaluate.order_of_operations.before[]
data modify storage bot:interpreter evaluate.order_of_operations.result.value append from storage bot:interpreter evaluate.order_of_operations.candidate_expression
data modify storage bot:interpreter evaluate.order_of_operations.result.value append from storage bot:interpreter evaluate.order_of_operations.after[]
