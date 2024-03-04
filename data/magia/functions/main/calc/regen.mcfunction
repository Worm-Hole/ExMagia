scoreboard players set $Magia Magia.Temp 100

scoreboard players operation #calc calcbase = @s Magia.ManaRegenTimeBase
scoreboard players operation #calc calcmult = @s Magia.ManaRegenTimeFactor
function calc:calcmult10000
scoreboard players operation #calc calcbase = #calc calcresult
scoreboard players operation #calc calcmult = $Magia Magia.Settings.ManaRegen.TimeMult
function calc:calcmult100
scoreboard players operation @s Magia.ManaRegenTime = #calc calcresult

scoreboard players operation @s Magia.ManaRegenPiece = @s Magia.MaxMana
scoreboard players operation @s Magia.ManaRegenPiece *= $Magia Magia.Temp
scoreboard players operation @s Magia.ManaRegenPiece /= @s Magia.ManaRegenTime
scoreboard players operation #calc calcbase = @s Magia.ManaRegenPiece
scoreboard players operation #calc calcmult = @s Magia.ManaRegenSpeed
function calc:calcmult10000
scoreboard players operation @s Magia.ManaRegenPiece = #calc calcresult

scoreboard players operation @s Magia.ManaRegen = @s Magia.ManaRegenPiece
scoreboard players operation @s Magia.ManaRegen /= $Magia Magia.Temp

scoreboard players operation @s Magia.ManaRegenPiece %= $Magia Magia.Temp