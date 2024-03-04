# 数値設定
scoreboard players operation #calc tempcalc100000 = #calc calcbase
scoreboard players operation #calc tempcalc10000 = #calc calcbase
scoreboard players operation #calc tempcalc1000 = #calc calcbase
scoreboard players operation #calc tempcalc100 = #calc calcbase
scoreboard players operation #calc tempcalc10 = #calc calcbase
scoreboard players operation #calc tempcalc1 = #calc calcbase
scoreboard players operation #calc tempcalc100000mult = #calc calcmult
scoreboard players operation #calc tempcalc10000mult = #calc calcmult
scoreboard players operation #calc tempcalc1000mult = #calc calcmult
scoreboard players operation #calc tempcalc100mult = #calc calcmult
scoreboard players operation #calc tempcalc10mult = #calc calcmult
scoreboard players operation #calc tempcalc1mult = #calc calcmult

# 計算開始
scoreboard players set #calc calc 10
scoreboard players operation #calc tempcalc10000 /= #calc calc
scoreboard players set #calc calc 100
scoreboard players operation #calc tempcalc1000 /= #calc calc
scoreboard players set #calc calc 1000
scoreboard players operation #calc tempcalc100 /= #calc calc
scoreboard players set #calc calc 10000
scoreboard players operation #calc tempcalc10 /= #calc calc
scoreboard players set #calc calc 100000
scoreboard players operation #calc tempcalc1 /= #calc calc


scoreboard players set #calc calc 100000
scoreboard players operation #calc tempcalc100000mult /= #calc calc

scoreboard players set #calc calc 10000
scoreboard players operation #calc tempcalc10000mult %= #calc calc
scoreboard players operation #calc tempcalc10000mult /= #calc calc

scoreboard players set #calc calc 1000
scoreboard players operation #calc tempcalc1000mult %= #calc calc
scoreboard players operation #calc tempcalc1000mult /= #calc calc

scoreboard players operation #calc tempcalc100mult %= #calc calc
scoreboard players set #calc calc 100
scoreboard players operation #calc tempcalc100mult /= #calc calc

scoreboard players operation #calc tempcalc10mult %= #calc calc
scoreboard players set #calc calc 10
scoreboard players operation #calc tempcalc10mult /= #calc calc

scoreboard players operation #calc tempcalc1mult %= #calc calc



scoreboard players operation #calc tempcalc100000 *= #calc tempcalc100000mult
scoreboard players operation #calc tempcalc10000 *= #calc tempcalc10000mult
scoreboard players operation #calc tempcalc1000 *= #calc tempcalc1000mult
scoreboard players operation #calc tempcalc100 *= #calc tempcalc100mult
scoreboard players operation #calc tempcalc10 *= #calc tempcalc10mult
scoreboard players operation #calc tempcalc1 *= #calc tempcalc1mult

scoreboard players operation #calc tempcalcresult = #calc tempcalc100000
scoreboard players operation #calc tempcalcresult += #calc tempcalc10000
scoreboard players operation #calc tempcalcresult += #calc tempcalc1000
scoreboard players operation #calc tempcalcresult += #calc tempcalc100
scoreboard players operation #calc tempcalcresult += #calc tempcalc10
scoreboard players operation #calc tempcalcresult += #calc tempcalc1

scoreboard players operation #calc calcresult = #calc tempcalcresult