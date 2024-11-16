data remove storage magia: dir
data remove storage magia: storage
data remove storage magia: particle
data remove storage magia: run
data remove storage magia: radius
data remove storage magia: offset_x
data remove storage magia: offset_y
data remove storage magia: offset_z

data modify storage magia: dir set from entity @s SelectedItem.tag.Magia.target.dir
data modify storage magia: storage set from entity @s SelectedItem.tag.Magia.target.storage
data modify storage magia: particle set from entity @s SelectedItem.tag.Magia.target.particle
data modify storage magia: run set from entity @s SelectedItem.tag.Magia.target.run
data modify storage magia: radius set from entity @s SelectedItem.tag.Magia.target.radius
data modify storage magia: offset_x set from entity @s SelectedItem.tag.Magia.target.offset_x
data modify storage magia: offset_y set from entity @s SelectedItem.tag.Magia.target.offset_y
data modify storage magia: offset_z set from entity @s SelectedItem.tag.Magia.target.offset_z

execute unless data storage magia: dir run data modify storage magia: dir set value "magia:main/target"
execute unless data storage magia: storage run data modify storage magia: storage set value "magia:"
execute unless data storage magia: particle run data modify storage magia: particle set value null
execute unless data storage magia: run run data modify storage magia: run set value null
execute unless data storage magia: radius run data modify storage magia: radius set value 64
execute unless data storage magia: offset_x run data modify storage magia: offset_x set value 0
execute unless data storage magia: offset_y run data modify storage magia: offset_y set value 0
execute unless data storage magia: offset_z run data modify storage magia: offset_z set value 0