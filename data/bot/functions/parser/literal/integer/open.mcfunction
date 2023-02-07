data remove storage bot:parser/literal input
execute if data storage bot:parser {current:"0"} run data modify storage bot:parser/literal input set value 0b
execute if data storage bot:parser {current:"1"} run data modify storage bot:parser/literal input set value 1b
execute if data storage bot:parser {current:"2"} run data modify storage bot:parser/literal input set value 2b
execute if data storage bot:parser {current:"3"} run data modify storage bot:parser/literal input set value 3b
execute if data storage bot:parser {current:"4"} run data modify storage bot:parser/literal input set value 4b
execute if data storage bot:parser {current:"5"} run data modify storage bot:parser/literal input set value 5b
execute if data storage bot:parser {current:"6"} run data modify storage bot:parser/literal input set value 6b
execute if data storage bot:parser {current:"7"} run data modify storage bot:parser/literal input set value 7b
execute if data storage bot:parser {current:"8"} run data modify storage bot:parser/literal input set value 8b
execute if data storage bot:parser {current:"9"} run data modify storage bot:parser/literal input set value 9b
execute if data storage bot:parser/literal input run data modify storage bot:parser stack[-1].value append from storage bot:parser/literal input
execute if data storage bot:parser/literal input run data modify storage bot:parser consumed set value true
execute unless data storage bot:parser/literal input run data modify storage bot:parser stack[-1].metadata.status set value "convert"