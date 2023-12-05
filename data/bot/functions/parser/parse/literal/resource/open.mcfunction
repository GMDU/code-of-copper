data modify storage bot:parser temp.resource_open set value {type:"literal",variant:"alphanumeric",metadata:{exclude:["function","resource"]}}

execute if data storage bot:parser current{value:'"'} run data modify storage bot:parser temp.resource_open set value {type:"literal",variant:"string",metadata:{type:"double"}}
execute if data storage bot:parser current{value:"'"} run data modify storage bot:parser temp.resource_open set value {type:"literal",variant:"string",metadata:{type:"single"}}

data modify storage bot:parser stack append from storage bot:parser temp.resource_open