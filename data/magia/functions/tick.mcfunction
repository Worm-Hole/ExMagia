function magia:tick/reset

execute as @a[scores={Magia.ManaRegenStop=1..}] run scoreboard players remove @s Magia.ManaRegenStop 1
execute as @a[scores={Magia.Cooldown=1..}] run scoreboard players remove @s Magia.Cooldown 1
execute as @e[scores={Magia.lifetick=1..}] run scoreboard players remove @s Magia.lifetick 1
execute as @a[scores={Magia.Stun=1..}] run scoreboard players remove @s Magia.Stun 1
execute as @a[scores={Magia.Stun=1..}] run effect give @s slowness 1 100 true
execute as @a[scores={Magia.Stun=1..}] run effect give @s jump_boost 1 238 true
function magia:tick/regenmana

execute as @e[tag=Magia.Tick] at @s run function magia:tick/magia

execute as @a run function magia:tick/target

execute as @a run advancement revoke @s[scores={Magia.Leave=1..}] only magia:entered_world
execute as @a run scoreboard players reset @s Magia.Leave