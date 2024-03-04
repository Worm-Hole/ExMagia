tag @s add Magia.This
execute as @e[type=item_display] if score @s Magia.EntityIDmem = @e[tag=Magia.This,limit=1] Magia.EntityID run kill @s
tag @s remove Magia.This
summon lightning_bolt ~ ~ ~
summon lightning_bolt ~ ~1 ~
summon lightning_bolt ~ ~-1 ~
summon lightning_bolt ~ ~ ~1
summon lightning_bolt ~ ~ ~-1
summon lightning_bolt ~1 ~ ~
summon lightning_bolt ~-1 ~ ~
summon lightning_bolt ~1 ~ ~1
summon lightning_bolt ~-1 ~ ~1
summon lightning_bolt ~1 ~ ~-1
summon lightning_bolt ~-1 ~ ~-1
function magia:lib/id/releaseentityid
kill @s