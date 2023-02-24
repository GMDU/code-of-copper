data modify storage bot:interpreter/utils/stringify arrayEvaluationStack append from storage bot:interpreter/utils/stringify stack[-1].value

data modify storage bot:interpreter/utils/stringify output append value ["{"]
execute if data storage bot:interpreter/utils/stringify arrayEvaluationStack[-1][0] run function bot:golem/utils/stringify/loops/object
data modify storage bot:interpreter/utils/stringify output append value ["}"]

data modify storage bot:interpreter/utils/stringify output set from storage bot:interpreter/utils/stringify arrayStack[-1]
data remove storage bot:interpreter/utils/stringify arrayStack[-1]
data remove storage bot:interpreter/utils/stringify arrayEvaluationStack[-1]
