data modify storage bot:parser stack[-1].metadata.has_prefix set value true
data modify storage bot:parser stack[-1].metadata merge value {status:"literal",no_matches:false}