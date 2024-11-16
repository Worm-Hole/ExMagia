# 数値設定
scoreboard players operation #calc tempcalc100000 = #calc calcdivbase
scoreboard players operation #calc tempcalc10000 = #calc calcdivbase
scoreboard players operation #calc tempcalc1000 = #calc calcdivbase
scoreboard players operation #calc tempcalc100 = #calc calcdivbase
scoreboard players operation #calc tempcalc10 = #calc calcdivbase
scoreboard players operation #calc tempcalc1 = #calc calcdivbase

scoreboard players operation #calc tempcalcdiv100000 = #calc calcdiv

# 計算開始

scoreboard players operation #calc tempcalc100000 /= #calc tempcalcdiv100000
scoreboard players operation #calc tempcalc10000 %= #calc tempcalcdiv100000
scoreboard players set #calc calc 10
scoreboard players operation #calc tempcalc10000 *= #calc calc
scoreboard players operation #calc tempcalc1000 = #calc tempcalc10000
scoreboard players operation #calc tempcalc10000 /= #calc tempcalcdiv100000


scoreboard players operation #calc tempcalc1000 %= #calc tempcalcdiv100000
scoreboard players operation #calc tempcalc1000 *= #calc calc
scoreboard players operation #calc tempcalc100 = #calc tempcalc1000
scoreboard players operation #calc tempcalc1000 /= #calc tempcalcdiv100000


scoreboard players operation #calc tempcalc100 %= #calc tempcalcdiv100000
scoreboard players operation #calc tempcalc100 *= #calc calc
scoreboard players operation #calc tempcalc10 = #calc tempcalc100
scoreboard players operation #calc tempcalc100 /= #calc tempcalcdiv100000


scoreboard players operation #calc tempcalc10 %= #calc tempcalcdiv100000
scoreboard players operation #calc tempcalc10 *= #calc calc
scoreboard players operation #calc tempcalc1 = #calc tempcalc10
scoreboard players operation #calc tempcalc10 /= #calc tempcalcdiv100000


scoreboard players operation #calc tempcalc1 %= #calc tempcalcdiv100000
scoreboard players operation #calc tempcalc1 *= #calc calc
scoreboard players operation #calc tempcalc1 /= #calc tempcalcdiv100000


scoreboard players set #calc calc 100000
scoreboard players operation #calc tempcalc100000 *= #calc calc
scoreboard players set #calc calc 10000
scoreboard players operation #calc tempcalc10000 *= #calc calc
scoreboard players set #calc calc 1000
scoreboard players operation #calc tempcalc1000 *= #calc calc
scoreboard players set #calc calc 100
scoreboard players operation #calc tempcalc100 *= #calc calc
scoreboard players set #calc calc 10
scoreboard players operation #calc tempcalc10 *= #calc calc

scoreboard players operation #calc tempcalcdivresult = #calc tempcalc100000
scoreboard players operation #calc tempcalcdivresult += #calc tempcalc10000
scoreboard players operation #calc tempcalcdivresult += #calc tempcalc1000
scoreboard players operation #calc tempcalcdivresult += #calc tempcalc100
scoreboard players operation #calc tempcalcdivresult += #calc tempcalc10
scoreboard players operation #calc tempcalcdivresult += #calc tempcalc1

scoreboard players operation #calc calcdivresult = #calc tempcalcdivresult