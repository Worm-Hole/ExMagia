$execute unless entity @e[tag=Magia.target,scores={Magia.PlayerIDmem=$(tempid)}] run return fail
execute unless score @s Magia.Mana matches 200.. run tellraw @s [{"text":"マナが不足しています。","color":"red"},{"text":"必要マナ:200"}]
execute unless score @s Magia.Mana matches 200.. run return fail
scoreboard players set @s Magia.Cooldown 5
scoreboard players set @s Magia.ManaRegenStop 20
scoreboard players remove @s Magia.Mana 200

$execute at @e[tag=Magia.target,scores={Magia.PlayerIDmem=$(tempid)}] run function magia:main/magia/medius/teleport/target

function magia:core/manachange