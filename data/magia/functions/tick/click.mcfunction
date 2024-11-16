#simple シンプルにクリック検知
#bow 弓
data modify storage magia: dir set from entity @s SelectedItem.tag.Magia.click.dir
data modify storage magia: type set from entity @s SelectedItem.tag.Magia.click.type
execute unless data storage magia: dir run data modify storage magia: dir set value "magia:main/click/detect"
execute unless data storage magia: type run data modify storage magia: type set value null

function magia:main/click/tick with storage magia:

