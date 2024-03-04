execute as @a if score @e[distance=..1,limit=1,sort=nearest,type=marker,tag=Magia.LS.Main] Magia.PlayerIDmem = @s Magia.PlayerID run function magia:main/magia/catastropha/lightning_sphere/warn

execute if score @s Magia.Memory2 matches 0..100 unless score @s Magia.Memory matches 400.. run scoreboard players add @s Magia.Memory 3
execute if score @s Magia.Memory2 matches 100..260 unless score @s Magia.Memory matches 400.. run scoreboard players add @s Magia.Memory 1
execute unless score @s Magia.Memory2 matches 260.. unless score @s Magia.Memory matches 400.. run scoreboard players add @s Magia.Memory 2
execute if score @s Magia.Memory2 matches 260.. unless score @s Magia.Memory matches ..1 run scoreboard players remove @s Magia.Memory 6
execute if score @s Magia.Memory2 matches 270.. unless score @s Magia.Memory matches ..1 run scoreboard players remove @s Magia.Memory 18

scoreboard players add @s Magia.Memory2 1
execute if score @s Magia.Memory2 matches 260..270 run function magia:main/magia/catastropha/lightning_sphere/time
execute if score @s Magia.Memory2 matches 261 run function magia:main/magia/catastropha/lightning_sphere/damage
execute if score @s Magia.Memory2 matches 300.. run function magia:main/magia/catastropha/lightning_sphere/kill

execute store result storage magia: size float 0.25 run scoreboard players get @s Magia.Memory

execute if score @s Magia.Memory2 matches 260.. store result storage magia: rotate float 2.0 run scoreboard players get @s Magia.Memory2
execute unless score @s Magia.Memory2 matches 260.. store result storage magia: rotate float 0.02 run scoreboard players get @s Magia.Memory2
tag @s add Magia.This
execute as @e[type=item_display] if score @s Magia.EntityIDmem = @e[tag=Magia.This,limit=1] Magia.EntityID run function magia:main/magia/catastropha/lightning_sphere/circle with storage magia:
tag @s remove Magia.This