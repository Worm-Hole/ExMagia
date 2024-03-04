execute store result storage magia: tempid int 1 run scoreboard players get @s Magia.PlayerID
$execute unless score @s Magia.Cooldown matches 1.. run function $(dir)$(magiaid)/run with storage magia:
data remove storage magia: tempid