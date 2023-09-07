data modify storage bot:interpreter utils.stringify.result append from storage bot:interpreter utils.stringify.current.value
execute if data storage bot:interpreter utils.stringify.current.value[] unless data storage bot:interpreter utils.stringify.stack[-2] run return -1

data modify storage bot:interpreter utils.stringify.result[-1] prepend value "'"
data modify storage bot:interpreter utils.stringify.result[-1] append value "'"