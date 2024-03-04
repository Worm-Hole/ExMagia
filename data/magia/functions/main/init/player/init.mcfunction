#プレイヤーの初期ステータスを設定

scoreboard players set @s Magia.Level 1
scoreboard players set @s Magia.ManaRegenTimeBase 7200
scoreboard players set @s Magia.ManaRegenTimeFactor 10000
scoreboard players set @s Magia.ManaRegenSpeed 10000
scoreboard players set @s Magia.ManaRegenFlat 0
scoreboard players set @s Magia.ManaRegenStop 0

scoreboard players set @s Magia.Cooldown 0

execute unless score @s Magia.PlayerID matches -2147483648..2147483647 run function magia:lib/id/allocateplayerid

function magia:main/calc/maxmana