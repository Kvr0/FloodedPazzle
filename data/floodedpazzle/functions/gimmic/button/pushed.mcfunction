#> floodedpazzle:gimmic/button/pushed
# @within function floodedpazzle:gimmic/button/tick

## タグ追加
    tag @s add gimmic.button.pushed

## データ設定
    execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].floodedpazzle.gimmic.button.push_t int 1 run scoreboard players get $gtime temporary

## SE
    playsound ui.button.click block @a ~ ~ ~ 1 1

## ChangeFlag
    function floodedpazzle:gimmic/changed

## Callback
    function #floodedpazzle:gimmic/button/pushed
