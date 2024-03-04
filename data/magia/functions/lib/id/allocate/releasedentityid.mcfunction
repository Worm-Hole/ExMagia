#解放されたIDが見つかったら再利用

execute store result score $Magia Magia.EntityID run data get storage magia: ReleasedID[0]
data remove storage magia: ReleasedID[0]