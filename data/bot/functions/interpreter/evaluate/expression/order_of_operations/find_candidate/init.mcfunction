data modify storage bot:interpreter evaluate.order_of_operations.before_current set value []
data modify storage bot:interpreter evaluate.order_of_operations.before set value []
data modify storage bot:interpreter evaluate.order_of_operations.after set value []
data modify storage bot:interpreter evaluate.order_of_operations.candidate_expression set value {type: "binary_operation", precedence:127b}
data modify storage bot:interpreter evaluate.order_of_operations.temp set from storage bot:interpreter evaluate.order_of_operations.current

function bot:interpreter/evaluate/expression/order_of_operations/find_candidate/iterate
