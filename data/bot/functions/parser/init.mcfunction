data modify storage bot:parser stack set value [{"type":"root",values:[]}]
data remove storage bot:parser/tokenise output
data modify storage bot:parser/tokenise target set from storage bot:parser target
data modify storage bot:parser/tokenise target append from storage moxlib:api/string/newline output

function bot:parser/tokenise

data modify storage bot:parser/iterate target set from storage bot:parser/tokenise output
function bot:parser/iterate

function bot:parser/instruction/close
function bot:parser/root/append