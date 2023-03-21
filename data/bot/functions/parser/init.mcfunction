data merge storage bot:parser {stack:[{"type":"block",value:[],metadata:{close:{type:"single",value:"^x"}}}],raise:"",tokenise:{output:[]},current:{value:"",consumed:false,escape:{escaped:false,status:"none"}},exit:0b,temp:{},parent:{},close:false}

data modify storage bot:parser tokenise.target set from storage bot:parser target
function bot:parser/tokenise

data modify storage bot:parser iterate.target set from storage bot:parser tokenise.output
data modify storage bot:parser iterate.target append value "^n"
data modify storage bot:parser iterate.target append value "^x"

function bot:parser/iterate

execute unless data storage bot:parser {raise:""} run function bot:parser/raise