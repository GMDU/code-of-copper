function bot:interpreter/evaluate/function/builtin/index/init

execute unless data storage bot:api/interpreter/function execute.return{value:-1} run data modify storage bot:api/interpreter/function execute.return set value {type:"literal",variant:"boolean",value:true}
execute if data storage bot:api/interpreter/function execute.return{value:-1} run data modify storage bot:api/interpreter/function execute.return set value {type:"literal",variant:"boolean",value:false}
