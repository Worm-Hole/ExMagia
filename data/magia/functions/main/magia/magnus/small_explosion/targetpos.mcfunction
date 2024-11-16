playsound magia:magnus_general player @a[distance=..128] ~ ~ ~ 6 1
summon marker ~ ~ ~ {Tags:["Magia.Tick","Magia.This"],data:{Magia:{tick:{run:"magnus/small_explosion/tick"}}}}
scoreboard players set @e[tag=Magia.This] Magia.lifetick 60
particle minecraft:end_rod ~ ~ ~ 1 1 1 0 500 force @a
tag @e[tag=Magia.This] remove Magia.This