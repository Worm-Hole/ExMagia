#マナ表示・更新

#dataにマナを保存
execute store result storage magia: tempid int 1 run scoreboard players get @s Magia.PlayerID
execute store result storage magia: tempmana int 1 run scoreboard players get @s Magia.Mana
execute store result storage magia: tempmaxmana int 1 run scoreboard players get @s Magia.MaxMana

#設定で変える
execute if score $Magia Magia.Settings.Manaview.Type matches 0 run function magia:core/manaview/bossbar with storage magia:
execute if score $Magia Magia.Settings.Manaview.Type matches 1 run function magia:core/manaview/bossbarsingle with storage magia:
execute if score $Magia Magia.Settings.Manaview.Type matches 2 run function magia:core/manaview/actionbar
execute if score $Magia Magia.Settings.Manaview.Type matches 3 run function magia:core/manaview/xpbar with storage magia: