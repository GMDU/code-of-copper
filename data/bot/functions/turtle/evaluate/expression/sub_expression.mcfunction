data modify storage bot:variables RecursiveEvaluation.evaluateStack append from storage bot:variables RecursiveEvaluation.evaluateStack[-1].expression
function bot:turtle/_evaluate
data modify storage bot:variables RecursiveEvaluation.expressionStack[-1].expressionExpression set from storage bot:io Out
function bot:turtle/evaluate/expression/perform_operation
