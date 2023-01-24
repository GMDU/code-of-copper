data modify storage bot:variables RecursiveEvaluation set value {evaluateStack: [], expressionStack: [], arrayStack: [], arrayEvaluationStack: []}
data modify storage bot:variables RecursiveEvaluation.evaluateStack append from storage bot:io In

function bot:golem/_evaluate
