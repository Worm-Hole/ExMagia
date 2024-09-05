$execute unless entity @e[tag=Magia.target,scores={Magia.PlayerIDmem=$(tempid)}] run return fail
execute unless score @s Magia.Mana matches 50000.. run tellraw @s [{"text":"マナが不足しています。","color":"red"},{"text":"必要マナ:50000"}]
execute unless score @s Magia.Mana matches 50000.. run return fail
scoreboard players set @s Magia.Cooldown 100
scoreboard players set @s Magia.ManaRegenStop 200
scoreboard players remove @s Magia.Mana 50000

$execute at @e[tag=Magia.target,scores={Magia.PlayerIDmem=$(tempid)}] run function magia:main/magia/catastropha/explosion/target

function magia:core/manachange