execute if entity @e[distance=..2,type=!#magia:notarget,limit=1,sort=nearest,tag=!Magia.Exclude] at @e[distance=..2,type=!#magia:notarget,limit=1,sort=nearest,tag=!Magia.Exclude] run function magia:main/target/run/target_pos with storage magia:
scoreboard players remove @s Magia.Temp 1
execute unless score @s Magia.Temp matches ..0 unless entity @e[distance=..2,type=!#magia:notarget,limit=1,sort=nearest,tag=!Magia.Exclude] positioned ^ ^ ^1 run function magia:main/target/run/target_entity