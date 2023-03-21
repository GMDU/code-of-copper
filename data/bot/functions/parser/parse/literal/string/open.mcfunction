execute if data storage bot:parser stack[-1].metadata{type:"single"} if data storage bot:parser current{value:"'",escape:{escaped:false}} run function bot:parser/parse/literal/string/close
execute if data storage bot:parser stack[-1].metadata{type:"double"} if data storage bot:parser current{value:"\"",escape:{escaped:false}} run function bot:parser/parse/literal/string/close

execute unless data storage bot:parser current{consumed:true} run data modify storage bot:parser stack[-1].value append from storage bot:parser current.value
data modify storage bot:parser current.consumed set value true