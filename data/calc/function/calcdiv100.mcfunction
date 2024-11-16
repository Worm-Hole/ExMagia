# 数値設定
scoreboard players operation #calc tempcalc100 = #calc calcdivbase
scoreboard players operation #calc tempcalc10 = #calc calcdivbase
scoreboard players operation #calc tempcalc1 = #calc calcdivbase

scoreboard players operation #calc tempcalcdiv100 = #calc calcdiv

# 計算開始

scoreboard players operation #calc tempcalc100 /= #calc tempcalcdiv100
scoreboard players operation #calc tempcalc10 %= #calc tempcalcdiv100
scoreboard players set #calc calc 10
scoreboard players operation #calc tempcalc10 *= #calc calc
scoreboard players operation #calc tempcalc1 = #calc tempcalc10
scoreboard players operation #calc tempcalc10 /= #calc tempcalcdiv100


scoreboard players operation #calc tempcalc1 %= #calc tempcalcdiv100
scoreboard players operation #calc tempcalc1 *= #calc calc
scoreboard players operation #calc tempcalc1 /= #calc tempcalcdiv100


scoreboard players set #calc calc 100
scoreboard players operation #calc tempcalc100 *= #calc calc
scoreboard players set #calc calc 10
scoreboard players operation #calc tempcalc10 *= #calc calc

scoreboard players operation #calc tempcalcresult = #calc tempcalc100
scoreboard players operation #calc tempcalcresult += #calc tempcalc10
scoreboard players operation #calc tempcalcresult += #calc tempcalc1

scoreboard players operation #calc calcresult = #calc tempcalcresult