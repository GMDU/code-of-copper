data modify storage bot:interpreter/evaluate stack[-1].a_raw set from storage bot:interpreter/evaluate stack[-1].a
data modify storage bot:interpreter/evaluate stack append from storage bot:interpreter/evaluate stack[-1].a
function bot:interpreter/_evaluate
data modify storage bot:interpreter/evaluate stack[-1].a set from storage bot:io Out

data modify storage bot:interpreter/evaluate stack[-1].b_raw set from storage bot:interpreter/evaluate stack[-1].b
data modify storage bot:interpreter/evaluate stack append from storage bot:interpreter/evaluate stack[-1].b
function bot:interpreter/_evaluate
data modify storage bot:interpreter/evaluate stack[-1].b set from storage bot:io Out

function bot:interpreter/evaluate/expression/perform_operation
