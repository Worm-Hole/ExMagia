execute at @s anchored eyes run summon interaction ~ ~1.2 ~ {Tags:["Magia.click","Magia.This"],width:0.3f,height:0.5f}
scoreboard players set @e[tag=Magia.This] Magia.lifetick 1
tag @e[tag=Magia.This] remove Magia.This