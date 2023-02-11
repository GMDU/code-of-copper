data modify storage bot:variables stack append from storage bot:variables stack[-1].value
function bot:golem/_evaluate
data modify storage bot:variables expressionStack append value {}
data modify storage bot:variables expressionStack[-1].expressionValue set from storage bot:io Out

execute if data storage bot:variables stack[-1].expression run function bot:golem/evaluate/expression/sub_expression

data remove storage bot:variables expressionStack[-1]
