data modify storage bot:parser stack[-1].operation set from storage bot:parser/expression operator
data modify storage bot:parser stack append value {"type":"expression"}
data modify storage bot:parser stack[-1].close set from storage bot:parser stack[-2].close