playsound magia:catastropha_general player @a[distance=..128] ~ ~ ~ 6 1 1
summon marker ~ ~ ~ {Tags:["Magia.Tick","Magia.This","Magia.EXP.Main"],data:{Magia:{tick:{run:"catastropha/explosion/tick"}}}}

scoreboard players operation @e[tag=Magia.This] Magia.PlayerIDmem = @s Magia.PlayerID
scoreboard players set @e[tag=Magia.This] Magia.Memory 1
execute as @e[tag=Magia.This,limit=1] run function magia:lib/id/allocateentityid

particle minecraft:end_rod ~ ~ ~ 1 1 1 0 500 force @a
summon item_display ~ ~30 ~ {brightness:{sky:15,block:15},Tags:["Magia.This2"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[1f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,0.1f,1f]},item:{id:"minecraft:slime_ball",Count:1b,tag:{CustomModelData:1100}}}
scoreboard players operation @e[tag=Magia.This2] Magia.EntityIDmem = @e[tag=Magia.This,limit=1] Magia.EntityID
scoreboard players set @e[tag=Magia.This2] Magia.SecondEntityID 0

tag @e[tag=Magia.This2] remove Magia.This2

summon item_display ~ ~50 ~ {brightness:{sky:15,block:15},Tags:["Magia.This2"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[1f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,0.1f,1f]},item:{id:"minecraft:slime_ball",Count:1b,tag:{CustomModelData:1100}}}
scoreboard players operation @e[tag=Magia.This2] Magia.EntityIDmem = @e[tag=Magia.This,limit=1] Magia.EntityID
scoreboard players set @e[tag=Magia.This2] Magia.SecondEntityID 1

tag @e[tag=Magia.This2] remove Magia.This2

summon item_display ~ ~80 ~ {brightness:{sky:15,block:15},Tags:["Magia.This2"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[1f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,0.1f,1f]},item:{id:"minecraft:slime_ball",Count:1b,tag:{CustomModelData:1102}}}
scoreboard players operation @e[tag=Magia.This2] Magia.EntityIDmem = @e[tag=Magia.This,limit=1] Magia.EntityID
scoreboard players set @e[tag=Magia.This2] Magia.SecondEntityID 2

tag @e[tag=Magia.This2] remove Magia.This2
tag @e[tag=Magia.This] remove Magia.This