summon marker ~ ~ ~ {Tags:["Magia.Tick","Magia.This"],data:{Magia:{tick:{run:"magnus/arrowrain/tick"}}}}
scoreboard players operation @e[tag=Magia.This] Magia.PlayerIDmem = @s Magia.PlayerID
scoreboard players set @e[tag=Magia.This] Magia.Memory 1
execute as @e[tag=Magia.This,limit=1] run function magia:lib/id/allocateentityid

$execute if score @s Magia.Bow.Charge matches 1..19 at @e[tag=Magia.target,scores={Magia.PlayerIDmem=$(tempid)}] run function magia:main/magia/magnus/arrowrain/process/r1 with storage magia:
$execute if score @s Magia.Bow.Charge matches 20..59 at @e[tag=Magia.target,scores={Magia.PlayerIDmem=$(tempid)}] run function magia:main/magia/magnus/arrowrain/process/r2 with storage magia:
$execute if score @s Magia.Bow.Charge matches 60..99 at @e[tag=Magia.target,scores={Magia.PlayerIDmem=$(tempid)}] run function magia:main/magia/magnus/arrowrain/process/r3 with storage magia:
$execute if score @s Magia.Bow.Charge matches 100.. at @e[tag=Magia.target,scores={Magia.PlayerIDmem=$(tempid)}] run function magia:main/magia/magnus/arrowrain/process/r4 with storage magia:

function magia:core/manachange
tag @e[tag=Magia.This] remove Magia.This