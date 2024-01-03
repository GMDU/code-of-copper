data modify storage bot:utils sort.stack[-1].output append from storage bot:utils sort.stack[-1].return[{side:"left"}].output[]
data modify storage bot:utils sort.stack[-1].output append from storage bot:utils sort.stack[-1].pivot
data modify storage bot:utils sort.stack[-1].output append from storage bot:utils sort.stack[-1].return[{side:"right"}].output[]

data modify storage bot:utils sort.return set from storage bot:utils sort.stack[-1]

data remove storage bot:utils sort.stack[-1]