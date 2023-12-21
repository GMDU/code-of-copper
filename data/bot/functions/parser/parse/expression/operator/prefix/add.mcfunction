data modify storage bot:parser stack[-1].metadata merge value {status:"literal",no_matches:false}
execute if data storage bot:parser stack[-1].metadata.operator{flags:["pseudo_operator"]} run return -1
data modify storage bot:parser stack[-1].metadata.has_prefix set value true
data modify storage bot:parser stack append value {type:"expression",metadata:{close_after_literal:true}}