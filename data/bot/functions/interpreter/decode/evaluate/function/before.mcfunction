data modify storage bot:interpreter instructions[-1].value prepend from storage bot:interpreter evaluate.stack[-1]

data modify storage bot:interpreter evaluate.stack[-1].metadata.status set value "open"
