data modify storage bot:interpreter evaluate.order_of_operations.current set from storage bot:interpreter evaluate.stack[-1].value

function bot:interpreter/evaluate/expression/order_of_operations/init

data modify storage bot:interpreter evaluate.replace set from storage bot:interpreter evaluate.order_of_operations.result
