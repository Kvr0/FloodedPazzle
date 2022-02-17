#> floodedpazzle:gimmic/button/tick
# @within function floodedpazzle:_/tick

## 押下チェック
    execute as @e[type=item_frame,tag=gimmic.button,tag=!gimmic.button.pushed] unless data entity @s {ItemRotation:0b} at @s rotated as @s run function floodedpazzle:gimmic/button/pushed

## 回転をリセット
    execute as @e[type=item_frame,tag=gimmic.button,tag=!gimmic.button.pushed] unless data entity @s {ItemRotation:0b} run data modify entity @s ItemRotation set value 0b
    execute as @e[type=item_frame,tag=gimmic.button,tag=gimmic.button.pushed] unless data entity @s {ItemRotation:1b} run data modify entity @s ItemRotation set value 1b
