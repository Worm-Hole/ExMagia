execute unless score $Magia Magia.Settings.Level.Enable matches 0 run scoreboard players operation $Magia Magia.Temp = $Magia Magia.Settings.MaxMana.Perlevel
execute unless score $Magia Magia.Settings.Level.Enable matches 0 run scoreboard players operation $Magia Magia.Temp *= @s Magia.Level

execute unless score $Magia Magia.Settings.Level.Enable matches 1 run scoreboard players operation $Magia Magia.Temp = $Magia Magia.Settings.MaxMana.Base

scoreboard players operation @s Magia.MaxMana = $Magia Magia.Temp

function magia:main/calc/regen
function magia:core/manachange