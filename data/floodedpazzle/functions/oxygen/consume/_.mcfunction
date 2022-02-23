#> floodedpazzle:oxygen/consume/_
# 酸素をし指定量まで使用する
# @api

## 指定量
    execute store result score $floodedpazzle:oxygen/consume temporary run data get storage floodedpazzle: input.oxygen.value 1

## 消費
    execute if score @s floodedpazzle.oxygen >= $floodedpazzle:oxygen/consume temporary run scoreboard players operation @s floodedpazzle.oxygen -= $floodedpazzle:oxygen/consume temporary
    execute if score @s floodedpazzle.oxygen < $floodedpazzle:oxygen/consume temporary run scoreboard players set @s floodedpazzle.oxygen 0

## Max
    execute if score @s floodedpazzle.oxygen > @s floodedpazzle.maxoxygen run scoreboard players operation @s floodedpazzle.oxygen = @s floodedpazzle.maxoxygen

## Run Out
    execute if score @s floodedpazzle.oxygen matches 0 run function #floodedpazzle:oxygen/runout
