data modify storage bot:interpreter/execution/evaluate stack set value []
data modify storage bot:interpreter/execution/evaluate expressionStack set value []
data modify storage bot:interpreter/execution/evaluate arrayStack set value []
data modify storage bot:interpreter/execution/evaluate arrayEvaluationStack set value []
data modify storage bot:interpreter/execution/evaluate stack append from storage bot:io In
data modify storage bot:io Out set value []

function bot:golem/execution/print/_evaluate

execute if data storage bot:io In{type:"string"} run data remove storage bot:io Out[-1][0]
execute if data storage bot:io In{type:"string"} run data remove storage bot:io Out[-1][-1]
