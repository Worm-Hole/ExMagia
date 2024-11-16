execute unless score @s[tag=Magia.Bow] Magia.Bow.Use matches 1 run scoreboard players add @s Magia.Bow.Charge 1
execute if entity @s[tag=!Magia.Bow] run scoreboard players set @s Magia.Bow.Charge 0
execute unless score @s Magia.Cooldown matches ..0 run scoreboard players set @s Magia.Bow.Charge 0
execute unless score @s Magia.Cooldown matches ..0 run scoreboard players set @s Magia.Bow.Use 0
execute if score @s Magia.Bow.Use matches 1 run function magia:main/click/check/bow
scoreboard players set @s Magia.Bow.Use 0
tag @a remove Magia.Bow