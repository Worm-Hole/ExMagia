scoreboard players set $Magia Magia.Temp 0
execute store result score $Magia Magia.Memory run data get storage magia: add
data modify storage magia: ListTemp set from storage magia: List

execute if data storage magia: ListTemp[0] run function magia:lib/list/run/sortadd

execute store result storage magia: index int 1 run scoreboard players get $Magia Magia.Temp
scoreboard players reset $Magia Magia.Temp

function magia:lib/list/end/sortadd with storage magia:

data remove storage magia: index
data remove storage magia: add