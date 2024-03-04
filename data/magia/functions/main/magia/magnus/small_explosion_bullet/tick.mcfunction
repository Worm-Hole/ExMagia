execute unless block ~ ~ ~ #magia:nocollision run function magia:main/magia/magnus/small_explosion_bullet/explode
execute unless block ~ ~ ~ #magia:nocollision run kill @s
execute unless score @s Magia.lifetick matches 1.. run function magia:main/magia/magnus/small_explosion_bullet/explode
execute unless score @s Magia.lifetick matches 1.. run kill @s
tp ^ ^ ^1
particle explosion ~ ~ ~ 0 0 0 1 1 force @a