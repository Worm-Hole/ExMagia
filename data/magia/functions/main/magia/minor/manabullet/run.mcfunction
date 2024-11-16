execute unless score @s Magia.Mana matches 50.. run tellraw @s [{"text":"マナが不足しています。","color":"red"},{"text":"必要マナ:50"}]
execute unless score @s Magia.Mana matches 50.. run return fail
scoreboard players add @s Magia.Cooldown 5
scoreboard players add @s Magia.ManaRegenStop 20
scoreboard players remove @s Magia.Mana 50
playsound magia:minor_general player @a[distance=..16] ~ ~ ~ 1 1

summon marker ~ ~ ~ {Tags:["Magia.Tick","Magia.This"],data:{Magia:{tick:{run:"minor/manabullet/tick"}}}}
scoreboard players operation @e[tag=Magia.This] Magia.PlayerIDmem = @s Magia.PlayerID
scoreboard players set @e[tag=Magia.This] Magia.lifetick 40
tp @e[tag=Magia.This] @s
tp @e[tag=Magia.This] ~ ~1.5 ~
tag @e[tag=Magia.This] remove Magia.This

function magia:core/manachange