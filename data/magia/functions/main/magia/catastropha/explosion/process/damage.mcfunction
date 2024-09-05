execute at @a if score @s Magia.PlayerIDmem = @p Magia.PlayerID run tag @p add Magia.This
execute as @e[type=!#magia:notarget,distance=..3] run function magia:core/damage/magia/explosion/d1
execute as @e[type=!#magia:notarget,distance=..6] run function magia:core/damage/magia/explosion/d2
execute as @e[type=!#magia:notarget,distance=..9] run function magia:core/damage/magia/explosion/d3
execute as @e[type=!#magia:notarget,distance=..15] run function magia:core/damage/magia/explosion/d4
execute as @e[type=!#magia:notarget,distance=..30] run function magia:core/damage/magia/explosion/d5
execute as @e[type=!#magia:notarget,distance=..60,tag=!Magia.This] run function magia:core/damage/magia/explosion/d6
execute at @a if score @s Magia.PlayerIDmem = @p Magia.PlayerID run tag @p remove Magia.This