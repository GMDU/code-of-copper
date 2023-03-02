data modify storage bot:io Out set value {type: "integer", value: 0}
data modify storage bot:io Out.value set from storage bot:interpreter/evaluate stack[-1].value
