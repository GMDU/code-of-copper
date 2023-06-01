function bot:interpreter/evaluate/expression/operations/maths/divide

data modify storage bot:interpreter/execution varName set from storage bot:interpreter/evaluate stack[-1].a_raw.value
data modify storage bot:interpreter/execution value set from storage bot:io Out

function bot:interpreter/evaluate/expression/operations/assign/set
