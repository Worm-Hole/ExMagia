#追加
execute store result storage magia: add int 1 run scoreboard players get @s Magia.EntityID
data modify storage magia: List set from storage magia: ReleasedID

function magia:lib/list/sortadd

data modify storage magia: ReleasedID set from storage magia: List
scoreboard players reset @s Magia.EntityID