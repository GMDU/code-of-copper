data modify storage bot:variables Array set value []
data modify storage bot:variables ArrayEvaluation set from storage bot:io In.values

execute if data storage bot:variables ArrayEvaluation[0] run function bot:turtle/evaluate/loops/array

data modify storage bot:io Out set from storage bot:variables Array
