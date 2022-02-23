#> floodedpazzle:oxygen/set/_
# @api

## データ取得
    execute store result score $floodedpazzle:oxygen/set/_.value temporary run data get storage floodedpazzle: input.oxygen.setvalue 1

## 最大値設定
    execute if score @s floodedpazzle.maxoxygen < $floodedpazzle:oxygen/set/_.value temporary run scoreboard players operation @s floodedpazzle.maxoxygen = $floodedpazzle:oxygen/set/_.value temporary

## 設定
    scoreboard players operation @s floodedpazzle.oxygen = $floodedpazzle:oxygen/set/_.value temporary
