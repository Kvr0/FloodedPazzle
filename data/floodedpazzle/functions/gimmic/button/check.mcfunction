#> floodedpazzle:gimmic/button/check
# @within function floodedpazzle:gimmic/button/tick

## OhMyDat
    function #oh_my_dat:please

## データコピー
    data modify storage calculation: gimmic.button set value {rotation:{default:0b,pushed:1b},time:-1,push_t:0}
    data modify storage calculation: gimmic.button set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].floodedpazzle.gimmic.button

## Rotation
    execute store result score $button.rotation temporary run data get entity @s ItemRotation 1
    execute store result score $button.rotation.default temporary run data get storage calculation: gimmic.button.rotation.default 1
    execute store result score $button.rotation.pushed temporary run data get storage calculation: gimmic.button.rotation.pushed 1

## Time
    execute store result score $button.push_t temporary run data get storage calculation: gimmic.button.push_t 1
    execute store result score $button.time temporary run data get storage calculation: gimmic.button.time 1
    scoreboard players operation $button.push_t temporary += $button.time temporary
### リセット
    execute if entity @s[tag=gimmic.button.pushed] unless score $button.time temporary matches ..-1 if score $button.push_t temporary <= $gtime temporary run function floodedpazzle:gimmic/button/reset

## 押下チェック
    execute if entity @s[tag=!gimmic.button.pushed] unless score $button.rotation temporary = $button.rotation.default temporary at @s rotated as @s run function floodedpazzle:gimmic/button/pushed

## 回転をリセット
    execute as @s[tag=!gimmic.button.pushed] unless score $button.rotation temporary = $button.rotation.default temporary run data modify entity @s ItemRotation set from storage calculation: gimmic.button.rotation.default
    execute as @s[tag=gimmic.button.pushed] unless score $button.rotation temporary = $button.rotation.pushed temporary run data modify entity @s ItemRotation set from storage calculation: gimmic.button.rotation.pushed
