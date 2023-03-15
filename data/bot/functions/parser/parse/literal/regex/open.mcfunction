execute if data storage bot:parser current{value:"/",escape:{escaped:false}} run function bot:parser/parse/literal/regex/close
execute if data storage bot:parser current{escape:{escaped:true}} unless data storage bot:parser current{value:"/"} run data modify storage bot:parser stack[-1].value append value "\\"

execute unless data storage bot:parser current{consumed:true} run data modify storage bot:parser stack[-1].value append from storage bot:parser current.value
data modify storage bot:parser current.consumed set value true