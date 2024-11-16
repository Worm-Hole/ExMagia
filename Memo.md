# ExMagia Ver.0


## 設定群

scoreboardで$Magiaに設定

Magia.Settings.Manaview.Type 0でbossbarで表示 1でbossbar(上の数字表示だけ) 2はまだ 3でXPbarを上書き

Magia.Settings.MaxMana.Base 最大マナ

Magia.Settings.ManaRegen.TimeMult マナ回復必要時間倍率 10000で100%

Magia.Settings.Player.GreatGrief 0で破滅的な破壊をもたらす魔法を無効化 1で使用可能(まだない)

Magia.Settings.World.WorldEffect 0で天候の変化やワールド規模のパーティクル表示などを無効化、1で有効化

## 初期値

MaxMana 最大マナ

ManaRegenTimeBase 魔力全快時間基礎値 初期値 7200(6分)

ManaRegenTimeFactor 魔力全快時間補正 10000 = 100%

Settings.ManaRegen.TimeMult($Magia) 魔力全快時間倍率設定 100 = 100%

ManaRegenTime 魔力全快時間

ManaRegenSpeed 10000 = 100%

ManaRegenFlat 初期値 0

ManaRegenBase 100でマナ1回復

## 魔力回復速度

ManaRegenTimeBase x ManaRegenTimeFactor x Settings.ManaRegen.TimeMult = ManaRegenTime

(MaxMana x 100) / (ManaRegenTime x ManaRegenSpeed) + ManaRegenFlat = ManaRegenBase

## 等級
ultima

catastropha

magnus

medius

minor

## Magiaファイル構造
外部(フォルダ外)から実行されるものはmagiaのフォルダ直下のみ
内部だけで実行する、切り離せないやつはprocess内

magia発動時に実行するファイル(run.mcfunction)の構造を真似るだけで実行できるものは基本直下
≒runから実行するものは基本直下

## TODO
###伏せてると発動できない状態の解決

###interactionのズレをどうにかする(できないかも)
昔ながらの方法(にんじん棒)に一時的に変更

###要素を追加

###レシピ追加

###lightning_sphereの火対策
なんかうまくできない、雷の数かなにかが邪魔してる？

###ファイル構造改善
explosion 完了
arrowrain 完了
lightning_sphere 未完了

tick処理関連 未完了