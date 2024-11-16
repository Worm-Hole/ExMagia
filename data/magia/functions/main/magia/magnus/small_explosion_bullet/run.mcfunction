execute unless score @s Magia.Mana matches 1000.. run tellraw @s [{"text":"マナが不足しています。","color":"red"},{"text":"必要マナ:1000"}]
execute unless score @s Magia.Mana matches 1000.. run return fail
scoreboard players add @s Magia.Cooldown 5
scoreboard players add @s Magia.ManaRegenStop 20
scoreboard players remove @s Magia.Mana 1000

playsound entity.creeper.primed player @a[distance=..64] ~ ~ ~ 3 1

summon marker ~ ~ ~ {Tags:["Magia.Tick","Magia.This"],data:{Magia:{tick:{run:"magnus/small_explosion_bullet/tick"}}}}
scoreboard players set @e[tag=Magia.This] Magia.lifetick 40
tp @e[tag=Magia.This] @s
execute positioned ~ ~2 ~ positioned ^ ^ ^2 run tp @e[tag=Magia.This] ~ ~ ~
tag @e[tag=Magia.This] remove Magia.This

function magia:core/manachange