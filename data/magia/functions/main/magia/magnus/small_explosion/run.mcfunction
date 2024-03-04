$execute unless entity @e[tag=Magia.target,scores={Magia.PlayerIDmem=$(tempid)}] run return fail
execute unless score @s Magia.Mana matches 1000.. run tellraw @s [{"text":"マナが不足しています。","color":"red"},{"text":"必要マナ:1000"}]
execute unless score @s Magia.Mana matches 1000.. run return fail
scoreboard players set @s Magia.Cooldown 30
scoreboard players set @s Magia.ManaRegenStop 40
scoreboard players remove @s Magia.Mana 1000

$execute at @e[tag=Magia.target,scores={Magia.PlayerIDmem=$(tempid)}] run function magia:main/magia/magnus/small_explosion/target

function magia:core/manachange