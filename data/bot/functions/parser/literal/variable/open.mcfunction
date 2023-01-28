execute unless data storage bot:parser/literal current.bracketed run function bot:parser/literal/variable/set_bracket
execute if data storage bot:parser/literal {current:{bracketed:true}} run function bot:parser/literal/variable/close/bracketed
execute if data storage bot:parser/literal {current:{bracketed:false}} run function bot:parser/literal/variable/close/standard
execute if data storage bot:parser/literal current.bracketed unless data storage bot:parser/literal {current:{status:"closed"}} run data modify storage bot:parser stack[-1].value append from storage bot:parser current