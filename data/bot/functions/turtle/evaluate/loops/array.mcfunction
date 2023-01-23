data modify storage bot:io In set from storage bot:variables ArrayEvaluation[0]
function bot:turtle/evaluate
data modify storage bot:variables Array append from storage bot:io Out
data remove storage bot:variables ArrayEvaluation[0]

execute if data storage bot:variables ArrayEvaluation[0] run function bot:turtle/evaluate/loops/array
