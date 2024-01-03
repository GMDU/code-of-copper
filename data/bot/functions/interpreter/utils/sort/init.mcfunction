data modify storage bot:utils sort merge value {stack: [{}], callback: "bot:interpreter/utils/sort/partition/compare"}
data modify storage bot:utils sort.stack[-1].target set from storage bot:utils sort.target
data remove storage bot:utils sort.return

function bot:interpreter/utils/sort/iterate

data modify storage bot:utils sort.output set from storage bot:utils sort.return.output