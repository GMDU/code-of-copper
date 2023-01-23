data modify storage bot:variables Expression set from storage bot:io In.value
data modify storage bot:io In set from storage bot:variables Expression
function bot:turtle/evaluate
data modify storage bot:variables ExpressionValue set from storage bot:io Out
