data modify storage bot:parser stack[-1].metadata.has_prefix set value true
data modify storage bot:parser stack[-1].metadata merge value {status:"literal",no_matches:false}
data modify storage bot:parser stack append value {type:"expression",metadata:{close_after_literal:true}}