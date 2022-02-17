#> floodedpazzle:gimmic/button/tick
# @within function floodedpazzle:_/tick

## Game Time
    execute store result score $gtime temporary run time query gametime

## チェック
    execute as @e[type=item_frame,tag=gimmic.button] at @s rotated as @s run function floodedpazzle:gimmic/button/check
