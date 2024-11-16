# 数値設定
scoreboard players operation #calc tempcalc10 = #calc calcbase
scoreboard players operation #calc tempcalc1 = #calc calcbase
scoreboard players operation #calc tempcalc10mult = #calc calcmult
scoreboard players operation #calc tempcalc1mult = #calc calcmult

# 計算開始
scoreboard players set #calc calc 10
scoreboard players operation #calc tempcalc1 /= #calc calc


scoreboard players operation #calc tempcalc10mult /= #calc calc

scoreboard players operation #calc tempcalc1mult %= #calc calc



scoreboard players operation #calc tempcalc10 *= #calc tempcalc10mult
scoreboard players operation #calc tempcalc1 *= #calc tempcalc1mult

scoreboard players operation #calc tempcalcresult += #calc tempcalc10
scoreboard players operation #calc tempcalcresult += #calc tempcalc1

scoreboard players operation #calc calcresult = #calc tempcalcresult