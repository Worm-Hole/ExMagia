$execute unless entity @e[tag=Magia.target,scores={Magia.PlayerIDmem=$(tempid)}] run return fail
execute unless score @s Magia.Mana matches 2000.. run tellraw @s [{"text":"マナが不足しています。","color":"red"}]
execute unless score @s Magia.Mana matches 2000.. run return fail
scoreboard players set @s Magia.Cooldown 20
scoreboard players set @s Magia.ManaRegenStop 20
scoreboard players remove @s Magia.Mana 2000
data modify storage magia: temp_radius set value 120
scoreboard players set @s Magia.Loop 512
data modify storage magia: uuid set from entity @s UUID
function magia:main/magia/magnus/arrowrain/process/run/random with storage magia: