data modify storage bot:variables RecursiveEvaluation set value {evaluateStack: [], expressionStack: [], arrayStack: [], arrayEvaluationStack: []}
data modify storage bot:variables RecursiveEvaluation.evaluateStack append from storage bot:io In
data modify storage bot:io Out set value []

function bot:golem/execution/print/_evaluate
