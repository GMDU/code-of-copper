execute unless data storage bot:utils sort.stack[-1].partitioned? run function bot:interpreter/utils/sort/partition/init
execute if data storage bot:utils sort.break run return -1
execute if data storage bot:utils sort.return run function bot:interpreter/utils/sort/child_closed

execute if data storage bot:utils sort.stack[-1].value[] run function bot:interpreter/utils/sort/next
execute unless data storage bot:utils sort.stack[-1].value[] unless data storage bot:utils sort.next run function bot:interpreter/utils/sort/close

execute if data storage bot:utils sort.next run function bot:interpreter/utils/sort/push
execute if data storage bot:utils sort.stack[] run function bot:interpreter/utils/sort/iterate