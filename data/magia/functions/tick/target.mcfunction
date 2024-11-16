#target_block 見ているブロックを起点に
data remove storage magia: type
data modify storage magia: type set from entity @s SelectedItem.tag.Magia.target.type
execute if data storage magia: type run function magia:main/magia/get

function magia:main/magia/tick with storage magia:

function magia:tick/click