data modify storage bot:interpreter/evaluate stack append from storage bot:interpreter/evaluate stack[-1].value
function bot:golem/_evaluate
data modify storage bot:interpreter/evaluate expressionStack append value {}
data modify storage bot:interpreter/evaluate expressionStack[-1].expressionValue set from storage bot:io Out

execute if data storage bot:interpreter/evaluate stack[-1].expression run function bot:golem/evaluate/expression/sub_expression

data remove storage bot:interpreter/evaluate expressionStack[-1]
