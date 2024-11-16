$execute unless entity @e[tag=Magia.target,scores={Magia.PlayerIDmem=$(tempid)}] run return fail
execute unless score @s Magia.Mana matches 30000.. run tellraw @s [{"text":"マナが不足しています。","color":"red"},{"text":"必要マナ:30000"}]
execute unless score @s Magia.Mana matches 30000.. run return fail
scoreboard players add @s Magia.Cooldown 200
scoreboard players add @s Magia.ManaRegenStop 200
scoreboard players remove @s Magia.Mana 30000

weather thunder
$execute at @e[tag=Magia.target,scores={Magia.PlayerIDmem=$(tempid)}] run function magia:main/magia/catastropha/lightning_sphere/targetpos

function magia:core/manachange