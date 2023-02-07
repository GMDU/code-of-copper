data merge storage bot:parser/root/filter {output:[],current:{}}
data modify storage bot:parser/root/filter target set from storage bot:parser stack[-1].instructions

function bot:parser/root/filter/iterate

data modify storage bot:parser stack[-1].instructions set from storage bot:parser/root/filter output