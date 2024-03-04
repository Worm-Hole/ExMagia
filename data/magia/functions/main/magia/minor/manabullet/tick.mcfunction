execute unless score @s Magia.lifetick matches 1.. run function magia:main/magia/minor/manabullet/kill
execute unless score @s Magia.lifetick matches 1.. run kill @s
tp ^ ^ ^1
particle minecraft:witch ~ ~ ~ 0.2 0.2 0.2 1 2 force @a
execute unless block ^ ^ ^1 #magia:nocollision run function magia:main/magia/minor/manabullet/kill
execute unless block ^ ^ ^1 #magia:nocollision run kill @s
execute at @a if score @s Magia.PlayerIDmem = @p Magia.PlayerID run tag @p add Magia.This
execute positioned ~-0.1 ~-0.1 ~-0.1 as @e[dx=0.2,dy=0.2,dz=0.2,type=!#magia:notarget,limit=1,sort=nearest,tag=!Magia.This] run function magia:core/damage/magia/manabullet
tag @a remove Magia.This