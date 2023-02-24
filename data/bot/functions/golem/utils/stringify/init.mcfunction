data modify storage bot:interpreter/utils/stringify stack set value []
data modify storage bot:interpreter/utils/stringify expressionStack set value []
data modify storage bot:interpreter/utils/stringify arrayStack set value []
data modify storage bot:interpreter/utils/stringify arrayEvaluationStack set value []
data modify storage bot:interpreter/utils/stringify stack append from storage bot:interpreter/utils/stringify input
data modify storage bot:interpreter/utils/stringify output set value []

function bot:golem/utils/stringify/main

execute if data storage bot:interpreter/utils/stringify input{type:"string"} run data remove storage bot:interpreter/utils/stringify output[-1][0]
execute if data storage bot:interpreter/utils/stringify input{type:"string"} run data remove storage bot:interpreter/utils/stringify output[-1][-1]
