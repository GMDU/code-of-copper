data modify storage bot:interpreter/expression/order_of_operations current set from storage bot:interpreter/expression/order_of_operations stack[-1]

execute unless data storage bot:interpreter/expression/order_of_operations current{type:"expression"} run data modify storage bot:interpreter/expression/order_of_operations output set from storage bot:interpreter/expression/order_of_operations current
execute if data storage bot:interpreter/expression/order_of_operations current.value[0] unless data storage bot:interpreter/expression/order_of_operations current.value[1] run data modify storage bot:interpreter/expression/order_of_operations output set from storage bot:interpreter/expression/order_of_operations current.value[0]

execute unless data storage bot:interpreter/expression/order_of_operations current{type:"expression"} run data remove storage bot:interpreter/expression/order_of_operations current
execute if data storage bot:interpreter/expression/order_of_operations current.value[0] unless data storage bot:interpreter/expression/order_of_operations current.value[1] run data remove storage bot:interpreter/expression/order_of_operations current

execute if data storage bot:interpreter/expression/order_of_operations current run function bot:interpreter/evaluate/expression/order_of_operations/disambiguate

data remove storage bot:interpreter/expression/order_of_operations current
data remove storage bot:interpreter/expression/order_of_operations stack[-1]
