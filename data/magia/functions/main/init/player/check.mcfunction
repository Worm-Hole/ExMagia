#プレイヤーの初期ステータスを設定
execute unless score @s Magia.Init matches -2147483648..2147483647 run function magia:main/init/player/init
scoreboard players set @s Magia.Init 1