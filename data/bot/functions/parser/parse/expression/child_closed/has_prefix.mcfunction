data modify storage bot:parser temp.prefix set from storage bot:parser parsed

data modify storage bot:parser parsed set from storage bot:parser stack[-1].metadata.operator
data modify storage bot:parser parsed.value set from storage bot:parser temp.prefix

data remove storage bot:parser temp.prefix
data modify storage bot:parser stack[-1].metadata merge value {has_prefix:false,operator:{}}