$execute unless entity @e[tag=Magia.target,scores={Magia.PlayerIDmem=$(tempid)}] run return fail
execute unless score @s Magia.Mana matches 500.. run tellraw @s [{"text":"マナが不足しています。","color":"red"}]
execute unless score @s Magia.Mana matches 500.. run return fail
scoreboard players set @s Magia.Cooldown 20
scoreboard players set @s Magia.ManaRegenStop 20
scoreboard players remove @s Magia.Mana 500
data modify storage magia: temp_radius set value 40
scoreboard players set @s Magia.Loop 100
data modify storage magia: uuid set from entity @s UUID
function magia:main/magia/magnus/arrowrain/process/run/random with storage magia: