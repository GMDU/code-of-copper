data remove storage bot:parser stack[-1].metadata.input
execute if data storage bot:parser current{value:"0"} run data modify storage bot:parser stack[-1].metadata.input set value 0b
execute if data storage bot:parser current{value:"1"} run data modify storage bot:parser stack[-1].metadata.input set value 1b
execute if data storage bot:parser current{value:"2"} run data modify storage bot:parser stack[-1].metadata.input set value 2b
execute if data storage bot:parser current{value:"3"} run data modify storage bot:parser stack[-1].metadata.input set value 3b
execute if data storage bot:parser current{value:"4"} run data modify storage bot:parser stack[-1].metadata.input set value 4b
execute if data storage bot:parser current{value:"5"} run data modify storage bot:parser stack[-1].metadata.input set value 5b
execute if data storage bot:parser current{value:"6"} run data modify storage bot:parser stack[-1].metadata.input set value 6b
execute if data storage bot:parser current{value:"7"} run data modify storage bot:parser stack[-1].metadata.input set value 7b
execute if data storage bot:parser current{value:"8"} run data modify storage bot:parser stack[-1].metadata.input set value 8b
execute if data storage bot:parser current{value:"9"} run data modify storage bot:parser stack[-1].metadata.input set value 9b
execute if data storage bot:parser stack[-1].metadata.input run data modify storage bot:parser stack[-1].value append from storage bot:parser stack[-1].metadata.input
execute if data storage bot:parser stack[-1].metadata.input run data modify storage bot:parser current.consumed set value true
execute unless data storage bot:parser stack[-1].metadata.input run data modify storage bot:parser stack[-1].metadata.status set value "convert"