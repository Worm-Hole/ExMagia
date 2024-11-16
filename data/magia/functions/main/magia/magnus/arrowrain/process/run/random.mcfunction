#$execute store result score magia: temp_x int 1 run random value -$(temp_radius)..$(temp_radius)
#$execute store result storage magia: temp_z int 1 run random value -$(temp_radius)..$(temp_radius)
function magia:main/magia/magnus/arrowrain/process/run/randomloop with storage magia:
execute store result storage magia: temp_y float 0.1 run random value 200..800

function magia:main/magia/magnus/arrowrain/process/run/shoot with storage magia:
data remove storage magia: temp_x
data remove storage magia: temp_z
scoreboard players remove @s Magia.Loop 1
execute unless score @s Magia.Loop matches 1.. run data remove storage magia: temp_radius
execute if score @s Magia.Loop matches 1.. run function magia:main/magia/magnus/arrowrain/process/run/random with storage magia:
data remove storage magia: temp_motionx
data remove storage magia: temp_motionz