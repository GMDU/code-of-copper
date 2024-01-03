# If there is to be a comparison
execute if data storage bot:utils sort.stack[-1].value[0].target[1] run data modify storage bot:utils sort.next set from storage bot:utils sort.stack[-1].value[0]

# If there is not to be a comparison
execute unless data storage bot:utils sort.stack[-1].value[0].target[1] run function bot:interpreter/utils/sort/next_return

data remove storage bot:utils sort.stack[-1].value[0]