#bossbar

bossbar remove magia.manaview.share
$bossbar set magia.manaview.$(tempid) visible true

#$execute unless score @s Magia.Player.bossbar.create matches 0 run bossbar add magia.manaview.$(tempid) {"text":"MaxMana/Mana"}
$bossbar add magia.manaview.$(tempid) {"text":"MaxMana/Mana"}
$bossbar set magia.manaview.$(tempid) style notched_10
$bossbar set magia.manaview.$(tempid) players @s
$bossbar set magia.manaview.$(tempid) color blue
$bossbar set magia.manaview.$(tempid) max $(tempmaxmana)
$bossbar set magia.manaview.$(tempid) value $(tempmana)
$execute unless score $Magia Magia.Settings.Level.Enable matches 0 run bossbar set magia.manaview.$(tempid) name [{"text":"Magia","color":"aqua"},{"text":" "},{"text":"Level:"},{"score":{"name":"@a[scores={Magia.PlayerID=$(tempid)}]","objective":"Magia.Level"}},{"text":" "},{"score":{"name":"@a[scores={Magia.PlayerID=$(tempid)}]","objective":"Magia.Mana"}},{"text":"/"},{"score":{"name":"@a[scores={Magia.PlayerID=$(tempid)}]","objective":"Magia.MaxMana"}}]
$execute unless score $Magia Magia.Settings.Level.Enable matches 1 run bossbar set magia.manaview.$(tempid) name [{"text":"Magia","color":"aqua"},{"text":" "},{"score":{"name":"@a[scores={Magia.PlayerID=$(tempid)}]","objective":"Magia.Mana"}},{"text":"/"},{"score":{"name":"@a[scores={Magia.PlayerID=$(tempid)}]","objective":"Magia.MaxMana"}}]