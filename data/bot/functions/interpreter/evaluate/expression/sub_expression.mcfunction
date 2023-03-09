data modify storage bot:interpreter/evaluate stack append from storage bot:interpreter/evaluate stack[-1].expression
function bot:interpreter/_evaluate
data modify storage bot:interpreter/expression stack[-1].expressionExpression set from storage bot:io Out
function bot:interpreter/evaluate/expression/perform_operation

function bot:interpreter/dev_mode/init
