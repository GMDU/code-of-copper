execute unless data storage bot:parser stack[-1].metadata{exclude:["function"]} if data storage bot:parser current{value:"("} run function bot:parser/parse/literal/alphanumeric/open/function
execute unless data storage bot:parser temp{function:true} run function bot:parser/parse/literal/alphanumeric/open/body