data modify storage bot:interpreter/evaluate stack set value []
data modify storage bot:interpreter/expression stack set value []
data modify storage bot:interpreter/evaluate arrayStack set value []
data modify storage bot:interpreter/evaluate arrayEvaluationStack set value []
data modify storage bot:interpreter/evaluate stack append from storage bot:io In

function bot:interpreter/_evaluate
