# 数値設定
scoreboard players operation #calc tempcalc1000 = #calc calcdivbase
scoreboard players operation #calc tempcalc100 = #calc calcdivbase
scoreboard players operation #calc tempcalc10 = #calc calcdivbase
scoreboard players operation #calc tempcalc1 = #calc calcdivbase

scoreboard players operation #calc tempcalcdiv1000 = #calc calcdiv

# 計算開始

scoreboard players operation #calc tempcalc1000 /= #calc tempcalcdiv1000
scoreboard players operation #calc tempcalc100 %= #calc tempcalcdiv1000
scoreboard players set #calc calc 10
scoreboard players operation #calc tempcalc100 *= #calc calc
scoreboard players operation #calc tempcalc10 = #calc tempcalc100
scoreboard players operation #calc tempcalc100 /= #calc tempcalcdiv1000


scoreboard players operation #calc tempcalc10 %= #calc tempcalcdiv1000
scoreboard players operation #calc tempcalc10 *= #calc calc
scoreboard players operation #calc tempcalc1 = #calc tempcalc10
scoreboard players operation #calc tempcalc10 /= #calc tempcalcdiv1000


scoreboard players operation #calc tempcalc1 %= #calc tempcalcdiv1000
scoreboard players operation #calc tempcalc1 *= #calc calc
scoreboard players operation #calc tempcalc1 /= #calc tempcalcdiv1000


scoreboard players set #calc calc 1000
scoreboard players operation #calc tempcalc1000 *= #calc calc
scoreboard players set #calc calc 100
scoreboard players operation #calc tempcalc100 *= #calc calc
scoreboard players set #calc calc 10
scoreboard players operation #calc tempcalc10 *= #calc calc

scoreboard players operation #calc tempcalcresult = #calc tempcalc1000
scoreboard players operation #calc tempcalcresult += #calc tempcalc100
scoreboard players operation #calc tempcalcresult += #calc tempcalc10
scoreboard players operation #calc tempcalcresult += #calc tempcalc1

scoreboard players operation #calc calcresult = #calc tempcalcresult