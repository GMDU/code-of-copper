data modify storage bot:utils sort.stack[-1] merge value {output: [], return: [], value: [{target: [], side: "left"},{target: [], side: "right"}]}
data modify storage bot:utils sort.stack[-1].pivot set from storage bot:utils sort.stack[-1].target[-1]
data remove storage bot:utils sort.stack[-1].target[-1]