data modify storage bot:interpreter/execution varName set from storage bot:interpreter/evaluate stack[-1].a_raw.value
data modify storage bot:interpreter/execution value set from storage bot:interpreter/evaluate stack[-1].b

function bot:interpreter/evaluate/expression/operations/assign/set

data modify storage bot:io Out set from storage bot:interpreter/evaluate stack[-1].b
