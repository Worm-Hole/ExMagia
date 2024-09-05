execute as @a[scores={Magia.Stun=1..}] run scoreboard players remove @s Magia.Stun 1
execute as @a[scores={Magia.Stun=1..}] run effect give @s slowness 1 100 true
execute as @a[scores={Magia.Stun=1..}] run effect give @s jump_boost 1 238 true
execute as @a[scores={Magia.Stun=1..}] run scoreboard players operation @s Magia.Temp = @s Magia.Stun
execute as @a[scores={Magia.Stun=1..}] run scoreboard players add @s Magia.Temp 20
execute as @a[scores={Magia.Stun=1..}] store result storage magia: temp int 0.05 run scoreboard players get @s Magia.Temp
execute as @a[scores={Magia.Stun=1..}] run function magia:tick/run/stun with storage magia:
data remove storage magia: temp