#$execute store result score magia: temp_x int 1 run random value -$(temp_radius)..$(temp_radius)
#$execute store result storage magia: temp_z int 1 run random value -$(temp_radius)..$(temp_radius)
scoreboard players set @s Magia.Temp.4 -1

$execute store result score @s Magia.Temp run random value -$(temp_radius)..$(temp_radius)
execute store result storage magia: temp_x float 0.1 run scoreboard players get @s Magia.Temp
scoreboard players operation @s Magia.Temp.2 = @s Magia.Temp
execute if score @s Magia.Temp.2 matches ..-1 run scoreboard players operation @s Magia.Temp.2 *= @s Magia.Temp.4
scoreboard players operation @s Magia.Temp.2 *= @s Magia.Temp.2

$execute store result score @s Magia.Temp run random value -$(temp_radius)..$(temp_radius)
execute store result storage magia: temp_z float 0.1 run scoreboard players get @s Magia.Temp
scoreboard players operation @s Magia.Temp.3 = @s Magia.Temp
execute if score @s Magia.Temp.3 matches ..-1 run scoreboard players operation @s Magia.Temp.3 *= @s Magia.Temp.4
scoreboard players operation @s Magia.Temp.3 *= @s Magia.Temp.3


scoreboard players operation @s Magia.Temp.2 += @s Magia.Temp.3

$scoreboard players set @s Magia.Temp.3 $(temp_radius)
scoreboard players operation @s Magia.Temp.3 *= @s Magia.Temp.3

execute unless score @s Magia.Temp.2 <= @s Magia.Temp.3 run function magia:main/magia/magnus/arrowrain/process/run/randomloop with storage magia: