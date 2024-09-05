#計算用
scoreboard objectives add Magia.Temp dummy

#マナ管理
scoreboard objectives add Magia.Mana dummy
scoreboard objectives add Magia.MaxMana dummy
scoreboard objectives add Magia.Level dummy

#設定/Settings

#0=bossbar 1=bossbar(text only) 2=actionbar(WIP) 3=XPbar(overwriteXP) default:0
scoreboard objectives add Magia.Settings.Manaview.Type dummy


#base maxmana default:2000 (if level system disabled)
scoreboard objectives add Magia.Settings.MaxMana.Base dummy

#level system 0=disabled 1=enabled default:0(WIP)
scoreboard objectives add Magia.Settings.Level.Enable dummy
#maxmana per level default:100(if level system enabled)(WIP)
scoreboard objectives add Magia.Settings.MaxMana.Perlevel dummy

#permanent status increase items 0=disabled 1=enabled default:1
scoreboard objectives add Magia.Settings.Items.PermanentStatus dummy

#10000=100% default:10000
scoreboard objectives add Magia.Settings.ManaRegen.TimeMult dummy

#world-class Grief 0=disabled 1=enabled defalt:1
scoreboard objectives add Magia.Settings.Player.GreatGrief dummy

#world-effect(weather change, world-wide particle, etc.) 0=disabled 1=enabled defalt:1
scoreboard objectives add Magia.Settings.World.WorldEffect dummy



#回復処理

#マナ回復速度
scoreboard objectives add Magia.ManaRegenTime dummy
scoreboard objectives add Magia.ManaRegenTimeBase dummy
scoreboard objectives add Magia.ManaRegenTimeFactor dummy
scoreboard objectives add Magia.ManaRegenSpeed dummy
scoreboard objectives add Magia.ManaRegenFlat dummy

scoreboard objectives add Magia.ManaRegen dummy
scoreboard objectives add Magia.ManaPiece dummy
scoreboard objectives add Magia.ManaRegenPiece dummy

#-1で完全停止、1以上でそのtick数回復停止、0で回復
scoreboard objectives add Magia.ManaRegenStop dummy
#全魔法のクールダウン
scoreboard objectives add Magia.Cooldown dummy


#ID
scoreboard objectives add Magia.PlayerID dummy
scoreboard objectives add Magia.PlayerIDmem dummy
scoreboard objectives add Magia.EntityID dummy
scoreboard objectives add Magia.EntityIDmem dummy

#特定のEntityに結びついたEntityの複数管理用ID(重複OK)
scoreboard objectives add Magia.SecondEntityID dummy

#判定
scoreboard objectives add Magia.Player.bossbar.create dummy
scoreboard objectives add Magia.Init dummy

scoreboard objectives add Magia.lifetick dummy

scoreboard objectives add Magia.Memory dummy
scoreboard objectives add Magia.Memory2 dummy

#特殊効果
scoreboard objectives add Magia.Stun dummy

#ログアウト確認
scoreboard objectives add Magia.Leave minecraft.custom:minecraft.leave_game

#死亡確認
scoreboard objectives add Magia.Death deathCount



#初期設定
execute unless score $Magia Magia.Init matches -2147483648..2147483647 run function magia:main/init/init

execute as @a run function magia:main/refresh