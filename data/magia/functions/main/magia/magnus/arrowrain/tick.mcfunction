execute as @e[type=arrow] if score @s Magia.EntityIDmem = @e[tag=Magia.This,limit=1] Magia.EntityID at @s run particle end_rod ~ ~ ~ 0 0 0 0 1 normal @a

scoreboard players add @s Magia.Memory 1
tag @s add Magia.This
execute if score @s Magia.Memory matches 120.. as @e[type=arrow] if score @s Magia.EntityIDmem = @e[tag=Magia.This,limit=1] Magia.EntityID at @s run particle end_rod ~ ~ ~ 0 0 0 0.2 3 normal @a
execute if score @s Magia.Memory matches 120.. run function magia:lib/id/killentity
tag @s remove Magia.This