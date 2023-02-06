execute unless data storage bot:parser stack[-1].metadata.bracketed run function bot:parser/literal/variable/set_bracket
execute if data storage bot:parser stack[-1].metadata{bracketed:true} run function bot:parser/literal/variable/close/bracketed
execute if data storage bot:parser stack[-1].metadata{bracketed:false} run function bot:parser/literal/variable/close/standard
execute unless data storage bot:parser {consumed:true} unless data storage bot:parser stack[-1].metadata{status:"closed"} run data modify storage bot:parser stack[-1].value append from storage bot:parser current
execute unless data storage bot:parser stack[-1].metadata{status:"closed"} run data modify storage bot:parser consumed set value true