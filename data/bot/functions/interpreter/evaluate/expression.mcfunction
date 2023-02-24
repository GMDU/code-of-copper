data modify storage bot:interpreter/evaluate stack append from storage bot:interpreter/evaluate stack[-1].value
function bot:interpreter/_evaluate
data modify storage bot:interpreter/expression stack append value {}
data modify storage bot:interpreter/expression stack[-1].expressionValue set from storage bot:io Out

execute if data storage bot:interpreter/evaluate stack[-1].expression run function bot:interpreter/evaluate/expression/sub_expression

data remove storage bot:interpreter/expression stack[-1]
