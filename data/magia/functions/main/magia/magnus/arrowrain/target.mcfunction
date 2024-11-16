execute if score @s Magia.Bow.Charge matches 1..19 run title @s actionbar {"text":"チャージ1段階目 消費マナ:300"}
execute if score @s Magia.Bow.Charge matches 20..59 run title @s actionbar {"text":"チャージ2段階目 消費マナ:500"}
execute if score @s Magia.Bow.Charge matches 60..99 run title @s actionbar {"text":"チャージ3段階目 消費マナ:1000"}
execute if score @s Magia.Bow.Charge matches 100.. run title @s actionbar {"text":"チャージ4段階目(MAX) 消費マナ:2000"} 

function magia:main/target/target_block

$execute if score @s Magia.Bow.Charge matches 1..19 at @e[tag=Magia.target,scores={Magia.PlayerIDmem=$(tempid)}] positioned ~ ~10 ~ run function magia:main/magia/magnus/arrowrain/particle/target/r1
$execute if score @s Magia.Bow.Charge matches 20..59 at @e[tag=Magia.target,scores={Magia.PlayerIDmem=$(tempid)}] positioned ~ ~10 ~ run function magia:main/magia/magnus/arrowrain/particle/target/r2
$execute if score @s Magia.Bow.Charge matches 60..99 at @e[tag=Magia.target,scores={Magia.PlayerIDmem=$(tempid)}] positioned ~ ~10 ~ run function magia:main/magia/magnus/arrowrain/particle/target/r3
$execute if score @s Magia.Bow.Charge matches 100.. at @e[tag=Magia.target,scores={Magia.PlayerIDmem=$(tempid)}] positioned ~ ~10 ~ run function magia:main/magia/magnus/arrowrain/particle/target/r4

execute if score @s Magia.Bow.Charge matches 1..19 at @s anchored eyes positioned ^ ^ ^1 rotated ~ ~90 run function magia:main/magia/magnus/arrowrain/particle/player/r1
execute if score @s Magia.Bow.Charge matches 20..59 at @s anchored eyes positioned ^ ^ ^1 rotated ~ ~90 run function magia:main/magia/magnus/arrowrain/particle/player/r2
execute if score @s Magia.Bow.Charge matches 60..99 at @s anchored eyes positioned ^ ^ ^1 rotated ~ ~90 run function magia:main/magia/magnus/arrowrain/particle/player/r3
execute if score @s Magia.Bow.Charge matches 100.. at @s anchored eyes positioned ^ ^ ^1 rotated ~ ~90 run function magia:main/magia/magnus/arrowrain/particle/player/r4

#$execute if score @s Magia.Bow.Charge matches 1..19 at @e[tag=Magia.target,scores={Magia.PlayerIDmem=$(tempid)}] positioned ~ ~10 ~ run function magia:main/magia/magnus/arrowrain/particle/player/r1
#$execute if score @s Magia.Bow.Charge matches 20..59 at @e[tag=Magia.target,scores={Magia.PlayerIDmem=$(tempid)}] positioned ~ ~10 ~ run function magia:main/magia/magnus/arrowrain/particle/player/r2
#$execute if score @s Magia.Bow.Charge matches 60..99 at @e[tag=Magia.target,scores={Magia.PlayerIDmem=$(tempid)}] positioned ~ ~10 ~ run function magia:main/magia/magnus/arrowrain/particle/player/r3
#$execute if score @s Magia.Bow.Charge matches 100.. at @e[tag=Magia.target,scores={Magia.PlayerIDmem=$(tempid)}] positioned ~ ~10 ~ run function magia:main/magia/magnus/arrowrain/particle/player/r4
