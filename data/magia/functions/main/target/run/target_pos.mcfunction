$execute positioned ~$(offset_x) ~$(offset_y) ~$(offset_z) run function $(dir)/particle/$(particle) with storage magia:
$execute positioned ~$(offset_x) ~$(offset_y) ~$(offset_z) run summon marker ~ ~ ~ {Tags:["Magia.target","Magia.This"]}
$scoreboard players set @e[tag=Magia.This] Magia.PlayerIDmem $(tempid)
tag @e[tag=Magia.This] remove Magia.This