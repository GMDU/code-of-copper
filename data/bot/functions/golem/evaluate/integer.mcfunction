data modify storage bot:io Out set value {type: "undefined", value: undefined}
data modify storage bot:io Out.value set from storage bot:variables stack[-1].value
data modify storage bot:io Out.type set from storage bot:variables stack[-1].variant
