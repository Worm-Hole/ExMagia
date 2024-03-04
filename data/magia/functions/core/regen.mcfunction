

execute unless score @s Magia.Mana > @s Magia.MaxMana run scoreboard players operation @s Magia.Mana += @s Magia.ManaRegen
execute unless score @s Magia.Mana > @s Magia.MaxMana run scoreboard players operation @s Magia.ManaPiece += @s Magia.ManaRegenPiece

execute unless score @s Magia.ManaPiece matches ..99 run scoreboard players add @s Magia.Mana 1
execute unless score @s Magia.ManaPiece matches ..99 run scoreboard players remove @s Magia.ManaPiece 100

execute unless score @s Magia.Mana < @s Magia.MaxMana run scoreboard players set @s Magia.ManaPiece 0
execute unless score @s Magia.Mana < @s Magia.MaxMana run scoreboard players operation @s Magia.Mana = @s Magia.MaxMana

#マナ表示の更新
function magia:core/manachange