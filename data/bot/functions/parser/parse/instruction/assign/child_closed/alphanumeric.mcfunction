data modify storage bot:parser stack[-1].args append value {type:"literal",variant:"string"}
data modify storage bot:parser stack[-1].args[-1].value set from storage bot:parser parsed.value