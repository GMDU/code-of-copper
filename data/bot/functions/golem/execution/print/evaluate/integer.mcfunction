data modify storage bot:io Out append value []
data modify storage bot:io Out[-1] append from storage bot:interpreter/execution/evaluate stack[-1].value
