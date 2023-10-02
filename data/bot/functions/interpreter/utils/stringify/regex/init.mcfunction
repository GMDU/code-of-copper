data modify storage bot:interpreter utils.stringify.result append value []
data modify storage bot:interpreter utils.stringify.result[-1] append from storage bot:interpreter utils.stringify.current.original_value[]

data modify storage bot:interpreter utils.stringify.result[-1] prepend value "/"
data modify storage bot:interpreter utils.stringify.result[-1] append value "/"