tag @s add Magia.This
execute as @e if score @s Magia.EntityIDmem = @e[tag=Magia.This,limit=1] Magia.EntityID run kill @s
tag @s remove Magia.This
function magia:lib/id/releaseentityid
kill @s