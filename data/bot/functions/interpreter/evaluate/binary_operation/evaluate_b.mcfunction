data modify storage bot:interpreter evaluate.stack[-1].a set from storage bot:interpreter evaluate.result
data modify storage bot:interpreter evaluate.stack[-1].metadata.status set value "evaluating_b"

data modify storage bot:interpreter evaluate.next set from storage bot:interpreter evaluate.stack[-1].b
data modify storage bot:interpreter evaluate.stack[-1].b_original set from storage bot:interpreter evaluate.stack[-1].b