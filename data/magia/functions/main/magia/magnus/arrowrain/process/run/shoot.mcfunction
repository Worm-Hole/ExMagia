$summon arrow ~$(temp_x) ~$(temp_y) ~$(temp_z) {pickup:0b,Owner:$(uuid),Tags:["Magia.This2"]}
scoreboard players operation @e[tag=Magia.This2] Magia.EntityIDmem = @e[tag=Magia.This,limit=1] Magia.EntityID
tag @e[tag=Magia.This2] remove Magia.This2