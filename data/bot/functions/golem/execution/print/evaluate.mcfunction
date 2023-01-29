data modify storage bot:variables RecursiveEvaluation set value {evaluateStack: [], expressionStack: [], arrayStack: [], arrayEvaluationStack: []}
data modify storage bot:variables RecursiveEvaluation.evaluateStack append from storage bot:io In

execute unless data storage bot:io In{type:"string"} run function bot:golem/execution/print/_evaluate
execute if data storage bot:io In{type:"string"} run function bot:golem/execution/print/evaluate/string
