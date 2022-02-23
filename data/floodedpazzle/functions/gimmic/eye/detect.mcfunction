#> floodedpazzle:gimmic/eye/detect
# @within function floodedpazzle:gimmic/eye/check

## ターゲットに
    tag @s add RelativeAngle.Target

## RelativeAngle
    data modify storage calculation: skip set value 1b
    execute as @e[tag=eye.target,limit=1] at @s run function relativeangle:get/_

    execute store result score $floodedpazzle:gimmic/eye/detect.rx temporary run data get storage relativeangle: result[0] 1
    execute store result score $floodedpazzle:gimmic/eye/detect.ry temporary run data get storage relativeangle: result[1] 1

## 角度チェック
    execute if score $floodedpazzle:gimmic/eye/detect.rx temporary >= $floodedpazzle:gimmic/eye/check.rx/min temporary if score $floodedpazzle:gimmic/eye/detect.rx temporary <= $floodedpazzle:gimmic/eye/check.rx/max temporary if score $floodedpazzle:gimmic/eye/detect.ry temporary >= $floodedpazzle:gimmic/eye/check.ry/min temporary if score $floodedpazzle:gimmic/eye/detect.ry temporary <= $floodedpazzle:gimmic/eye/check.ry/max temporary run function floodedpazzle:gimmic/eye/check_catch

## タグ削除
    tag @s remove RelativeAngle.Target
