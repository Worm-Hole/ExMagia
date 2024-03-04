#target_block 見ているブロックを起点に
execute unless score @s Magia.Cooldown matches 1.. run data modify storage magia: type set from entity @s SelectedItem.tag.Magia.target.type
execute if data storage magia: type run function magia:main/magia/get

execute unless score @s Magia.Cooldown matches 1.. run function magia:main/magia/tick with storage magia:

function magia:tick/click