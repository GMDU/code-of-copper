data modify storage bot:interpreter/utils/stringify stack append from storage bot:interpreter/utils/stringify arrayEvaluationStack[-1][0]
function bot:golem/utils/stringify/main
data remove storage bot:interpreter/utils/stringify arrayEvaluationStack[-1][0]
execute if data storage bot:interpreter/utils/stringify arrayEvaluationStack[-1][0] run data modify storage bot:interpreter/utils/stringify output append value [", "]

execute if data storage bot:interpreter/utils/stringify arrayEvaluationStack[-1][0] run function bot:golem/utils/stringify/loops/array
