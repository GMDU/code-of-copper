data modify storage bot:interpreter evaluate.stack[-1].metadata.status set value "evaluating_a"

data modify storage bot:interpreter evaluate.next set from storage bot:interpreter evaluate.stack[-1].a
data modify storage bot:interpreter evaluate.stack[-1].a_original set from storage bot:interpreter evaluate.stack[-1].a
