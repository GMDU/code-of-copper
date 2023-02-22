data modify storage bot:interpreter/evaluate stack append from storage bot:interpreter/evaluate stack[-1].expression
function bot:golem/_evaluate
data modify storage bot:interpreter/evaluate expressionStack[-1].expressionExpression set from storage bot:io Out
function bot:golem/evaluate/expression/perform_operation
