data modify storage bot:io Out append from storage bot:variables stack[-1].source_string
data modify storage bot:io Out[-1] prepend value "/"
data modify storage bot:io Out[-1] append value "/"
