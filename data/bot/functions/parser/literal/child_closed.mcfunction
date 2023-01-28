data modify storage bot:parser stack[-1].value append from storage bot:parser parsed
execute unless data storage bot:parser {parsed:{value:{reparse:false}}} run function bot:parser/common/reparse
data remove storage bot:parser stack[-1].reparse