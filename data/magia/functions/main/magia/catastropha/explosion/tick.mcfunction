execute as @a if score @e[distance=..1,limit=1,sort=nearest,type=marker,tag=Magia.EXP.Main] Magia.PlayerIDmem = @s Magia.PlayerID run function magia:main/magia/catastropha/explosion/process/warn

execute if score @s Magia.Memory2 matches ..30 unless score @s Magia.Memory matches 200.. run scoreboard players add @s Magia.Memory 5
execute if score @s Magia.Memory2 matches 30..80 unless score @s Magia.Memory matches 200.. run scoreboard players add @s Magia.Memory 3
execute if score @s Magia.Memory2 matches 80.. unless score @s Magia.Memory matches ..1 run scoreboard players remove @s Magia.Memory 12

scoreboard players add @s Magia.Memory2 1
execute if score @s Magia.Memory2 matches 80..85 run function magia:main/magia/catastropha/explosion/process/time
execute if score @s Magia.Memory2 matches 85 run function magia:main/magia/catastropha/explosion/process/damage
execute if score @s Magia.Memory2 matches 98.. run function magia:lib/id/killentity

tag @s add Magia.This

execute store result storage magia: size float 0.18 run scoreboard players get @s Magia.Memory
execute if score @s Magia.Memory2 matches 90.. store result storage magia: rotate float 2.0 run scoreboard players get @s Magia.Memory2
execute unless score @s Magia.Memory2 matches 90.. store result storage magia: rotate float 0.02 run scoreboard players get @s Magia.Memory2
execute as @e[type=item_display] if score @s Magia.EntityIDmem = @e[tag=Magia.This,limit=1] Magia.EntityID if score @s Magia.SecondEntityID matches 0 run function magia:main/magia/catastropha/explosion/process/circle with storage magia:

execute store result storage magia: size float 0.3 run scoreboard players get @s Magia.Memory
execute if score @s Magia.Memory2 matches 90.. store result storage magia: rotate float 2.0 run scoreboard players get @s Magia.Memory2
execute unless score @s Magia.Memory2 matches 90.. store result storage magia: rotate float 0.03 run scoreboard players get @s Magia.Memory2
execute as @e[type=item_display] if score @s Magia.EntityIDmem = @e[tag=Magia.This,limit=1] Magia.EntityID if score @s Magia.SecondEntityID matches 1 run function magia:main/magia/catastropha/explosion/process/circle with storage magia:

execute store result storage magia: size float 0.23 run scoreboard players get @s Magia.Memory
execute if score @s Magia.Memory2 matches 90.. store result storage magia: rotate float 2.0 run scoreboard players get @s Magia.Memory2
execute unless score @s Magia.Memory2 matches 90.. store result storage magia: rotate float 0.025 run scoreboard players get @s Magia.Memory2
execute as @e[type=item_display] if score @s Magia.EntityIDmem = @e[tag=Magia.This,limit=1] Magia.EntityID if score @s Magia.SecondEntityID matches 2 run function magia:main/magia/catastropha/explosion/process/circle with storage magia:


tag @s remove Magia.This