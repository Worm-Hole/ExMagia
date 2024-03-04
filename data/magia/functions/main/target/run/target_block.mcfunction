execute unless block ~ ~ ~ #magia:nocollision positioned ^ ^ ^-1 run function magia:main/target/run/target_pos with storage magia:
scoreboard players remove @s Magia.Temp 1
execute unless score @s Magia.Temp matches ..0 if block ~ ~ ~ #magia:nocollision positioned ^ ^ ^1 run function magia:main/target/run/target_block