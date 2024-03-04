# 数値設定
scoreboard players operation #calc tempcalc10 = #calc calcbase
scoreboard players operation #calc tempcalc1 = #calc calcbase

scoreboard players operation #calc tempcalcdiv10 = #calc calcdiv

# 計算開始

scoreboard players operation #calc tempcalc10 /= #calc tempcalcdiv10
scoreboard players operation #calc tempcalc1 %= #calc tempcalcdiv10
scoreboard players set #calc calc 10
scoreboard players operation #calc tempcalc1 *= #calc calc
scoreboard players operation #calc tempcalc1 /= #calc tempcalcdiv10



scoreboard players operation #calc tempcalc10 *= #calc calc

scoreboard players operation #calc tempcalcresult = #calc tempcalc10
scoreboard players operation #calc tempcalcresult += #calc tempcalc1

scoreboard players operation #calc calcresult = #calc tempcalcresult