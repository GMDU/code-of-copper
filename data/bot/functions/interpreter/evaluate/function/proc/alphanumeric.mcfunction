data modify storage bot:interpreter evaluate.replace set from storage bot:interpreter evaluate.stack[-1]
data modify storage bot:interpreter evaluate.replace.name set from storage bot:interpreter temp.proc.value.value
data modify storage bot:interpreter evaluate.replace.metadata.exclude append value "proc"