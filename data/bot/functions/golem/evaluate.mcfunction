data modify storage bot:interpreter/evaluate stack set value []
data modify storage bot:interpreter/evaluate expressionStack set value []
data modify storage bot:interpreter/evaluate arrayStack set value []
data modify storage bot:interpreter/evaluate arrayEvaluationStack set value []
data modify storage bot:interpreter/evaluate stack append from storage bot:io In

function bot:golem/_evaluate
