data modify storage bot:interpreter/execution/evaluate arrayEvaluationStack append from storage bot:interpreter/execution/evaluate stack[-1].value

data modify storage bot:io Out append value ["{"]
execute if data storage bot:interpreter/execution/evaluate arrayEvaluationStack[-1][0] run function bot:golem/execution/print/evaluate/loops/object
data modify storage bot:io Out append value ["}"]

data modify storage bot:io Out set from storage bot:interpreter/execution/evaluate arrayStack[-1]
data remove storage bot:interpreter/execution/evaluate arrayStack[-1]
data remove storage bot:interpreter/execution/evaluate arrayEvaluationStack[-1]
