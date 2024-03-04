#target_block 見ているブロックを起点に
data modify storage magia: dir set from entity @s data.Magia.tick.dir
execute unless data storage magia: dir run data modify storage magia: dir set value "magia:main/magia/"

data modify storage magia: run set from entity @s data.Magia.tick.run
function magia:core/magia with storage magia:

data remove storage magia: dir
data remove storage magia: run