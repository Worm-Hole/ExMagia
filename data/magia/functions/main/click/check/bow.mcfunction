data remove storage magia: magiaid
data remove storage magia: dir
data modify storage magia: magiaid set from entity @s SelectedItem.tag.Magia.id
data modify storage magia: dir set from entity @s SelectedItem.tag.Magia.dir
execute unless data storage magia: dir run data modify storage magia: dir set value "magia:main/magia"

function magia:main/click/run/general with storage magia:

data remove storage magia: magiaid
data remove storage magia: dir