execute store result storage magia: tempid int 1 run scoreboard players get @s Magia.PlayerID
execute store result score @s Magia.Temp run data get storage magia: radius 1
execute at @s anchored eyes positioned ^ ^ ^1 run function magia:main/target/run/target_block