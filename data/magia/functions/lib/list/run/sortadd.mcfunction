execute store result score $Magia Magia.Memory2 run data get storage magia: ListTemp[0]

execute if score $Magia Magia.Memory < $Magia Magia.Memory2 run return 1
data remove storage magia: ListTemp[0]
scoreboard players add $Magia Magia.Temp 1

scoreboard players reset $Magia Magia.Memory2
execute if data storage magia: ListTemp[0] run function magia:lib/list/run/sortadd