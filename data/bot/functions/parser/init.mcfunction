data modify storage bot:parser stack set value [{"type":"root",values:[]}]
data remove storage bot:parser/tokenise output
data modify storage bot:parser/tokenise target set from storage bot:parser target
function bot:parser/tokenise

data modify storage bot:parser/iterate target set from storage bot:parser/tokenise output
function bot:parser/iterate
