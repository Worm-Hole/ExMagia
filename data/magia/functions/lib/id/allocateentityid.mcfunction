#ID割り当て

execute unless data storage magia: ReleasedID[0] run function magia:lib/id/allocate/newentityid
execute if data storage magia: ReleasedID[0] run function magia:lib/id/allocate/releasedentityid
scoreboard players operation @s Magia.EntityID = $Magia Magia.EntityID
scoreboard players reset $Magia Magia.EntityID