data modify storage bot:parser stack[-1].operation set from storage bot:parser/expression operator
data modify storage bot:parser stack append value {"type":"expression"}
data modify storage bot:parser stack[-1].metadata.close set from storage bot:parser stack[-2].metadata.close