#> floodedpazzle:oxygen/tick
# @within function floodedpazzle:_/tick

## 水中判定
    execute as @a at @s run function floodedpazzle:oxygen/check_inwater

## メーター表示
    execute as @a run function floodedpazzle:oxygen/show_meter

## Reset
    function calculation:reset/_
