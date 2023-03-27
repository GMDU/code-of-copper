execute unless data storage bot:interpreter/evaluate stack[-1].evaluated.a run function bot:interpreter/evaluate/binary_operation/evaluate_a
execute unless data storage bot:interpreter/evaluate stack[-1].evaluated.b if data storage bot:interpreter/evaluate stack[-1].evaluated{a:true} run function bot:interpreter/evaluate/binary_operation/evaluate_b

execute if data storage bot:interpreter/evaluate stack[-1].evaluated{a:true,b:true} run function bot:interpreter/evaluate/expression/perform_operation
