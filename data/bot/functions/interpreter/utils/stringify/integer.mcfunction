data modify storage bot:interpreter/utils/stringify output append value []
data modify storage bot:interpreter/utils/stringify output[-1] append from storage bot:interpreter/utils/stringify stack[-1].value
