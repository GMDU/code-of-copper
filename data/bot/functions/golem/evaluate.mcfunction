data modify storage bot:variables stack set value []
data modify storage bot:variables expressionStack set value []
data modify storage bot:variables arrayStack set value []
data modify storage bot:variables arrayEvaluationStack set value []
data modify storage bot:variables stack append from storage bot:io In

function bot:golem/_evaluate
