#bossbar

bossbar add magia.manaview.share {"text":"MaxMana/Mana"}
$bossbar remove magia.manaview.$(tempid)
bossbar set magia.manaview.share visible true
bossbar set magia.manaview.share style progress
bossbar set magia.manaview.share players @a
bossbar set magia.manaview.share color blue
bossbar set magia.manaview.share max 100
bossbar set magia.manaview.share value 100
execute unless score $Magia Magia.Settings.Level.Enable matches 0 run bossbar set magia.manaview.share name [{"text":"Magia","color":"aqua"},{"text":" "},{"text":"Level:"},{"score":{"name":"@s","objective":"Magia.Level"}},{"text":" "},{"score":{"name":"@s","objective":"Magia.Mana"}},{"text":"/"},{"score":{"name":"@s","objective":"Magia.MaxMana"}}]
execute unless score $Magia Magia.Settings.Level.Enable matches 1 run bossbar set magia.manaview.share name [{"text":"Magia","color":"aqua"},{"text":" "},{"score":{"name":"@s","objective":"Magia.Mana"}},{"text":"/"},{"score":{"name":"@s","objective":"Magia.MaxMana"}}]