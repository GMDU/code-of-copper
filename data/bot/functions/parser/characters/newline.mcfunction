data modify storage bot:parser temp.check set from storage moxlib:api/string/newline output
execute store success storage bot:parser temp.success byte 1 run data modify storage bot:parser temp.check set from storage bot:parser current.value

execute if data storage bot:parser temp{success:false} run data modify storage bot:parser current.value set value "^n"

execute if data storage bot:parser current{value:"^n"} run data modify storage bot:parser current merge value {flags:["whitespace","terminator","meta"],comment:false}