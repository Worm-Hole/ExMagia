function magia:main/magia/catastropha/lightning_sphere/sphere
execute at @a if score @s Magia.PlayerIDmem = @p Magia.PlayerID run tag @p add Magia.This
execute as @e[type=!#magia:notarget,distance=..10] run function magia:core/damage/magia/lightning_sphere/d1
execute as @e[type=!#magia:notarget,distance=11..20] run function magia:core/damage/magia/lightning_sphere/d2
execute as @e[type=!#magia:notarget,distance=21..30] run function magia:core/damage/magia/lightning_sphere/d3
execute as @e[type=!#magia:notarget,distance=31..40,tag=!Magia.This] run function magia:core/damage/magia/lightning_sphere/d4
execute as @e[type=!#magia:notarget,distance=41..50,tag=!Magia.This] run function magia:core/damage/magia/lightning_sphere/d5
execute as @e[type=!#magia:notarget,distance=51..60,tag=!Magia.This] run function magia:core/damage/magia/lightning_sphere/d6
execute as @e[type=!#magia:notarget,distance=61..70,tag=!Magia.This] run function magia:core/damage/magia/lightning_sphere/d7
execute as @e[type=!#magia:notarget,distance=71..80,tag=!Magia.This] run function magia:core/damage/magia/lightning_sphere/d8
execute as @e[type=!#magia:notarget,distance=81..90,tag=!Magia.This] run function magia:core/damage/magia/lightning_sphere/d9
execute as @e[type=!#magia:notarget,distance=91..100,tag=!Magia.This] run function magia:core/damage/magia/lightning_sphere/d10
execute at @a if score @s Magia.PlayerIDmem = @p Magia.PlayerID run tag @p remove Magia.This