data modify storage bot:variables RecursiveEvaluation.evaluateStack append from storage bot:variables RecursiveEvaluation.evaluateStack[-1].expression
function bot:golem/_evaluate
data modify storage bot:variables RecursiveEvaluation.expressionStack[-1].expressionExpression set from storage bot:io Out
function bot:golem/evaluate/expression/perform_operation
