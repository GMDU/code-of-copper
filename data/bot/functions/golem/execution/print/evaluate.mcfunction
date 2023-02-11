data modify storage bot:variables stack set value []
data modify storage bot:variables expressionStack set value []
data modify storage bot:variables arrayStack set value []
data modify storage bot:variables arrayEvaluationStack set value []
data modify storage bot:variables stack append from storage bot:io In
data modify storage bot:io Out set value []

function bot:golem/execution/print/_evaluate

execute if data storage bot:io In{type:"string"} run data remove storage bot:io Out[-1][0]
execute if data storage bot:io In{type:"string"} run data remove storage bot:io Out[-1][-1]
