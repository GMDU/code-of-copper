scoreboard players set .index bot.execution.variables 1
data modify storage bot:interpreter/expression/order_of_operations candidate_expression set value {precedence: 127b}
data modify storage bot:interpreter/expression/order_of_operations before set value []
data modify storage bot:interpreter/expression/order_of_operations temp set from storage bot:interpreter/expression/order_of_operations current.value

function bot:interpreter/evaluate/expression/order_of_operations/find_candidate/iterate

function bot:interpreter/evaluate/expression/order_of_operations/find_candidate/divide
