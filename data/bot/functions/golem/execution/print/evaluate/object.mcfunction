data modify storage bot:variables arrayEvaluationStack append from storage bot:variables stack[-1].value

data modify storage bot:io Out append value ["{"]
execute if data storage bot:variables arrayEvaluationStack[-1][0] run function bot:golem/execution/print/evaluate/loops/object
data modify storage bot:io Out append value ["}"]

data modify storage bot:io Out set from storage bot:variables arrayStack[-1]
data remove storage bot:variables arrayStack[-1]
data remove storage bot:variables arrayEvaluationStack[-1]
