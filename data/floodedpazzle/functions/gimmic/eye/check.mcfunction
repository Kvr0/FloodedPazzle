#> floodedpazzle:gimmic/eye/check
# @within function floodedpazzle:gimmic/eye/tick

## Tag
    tag @s add eye.target

## OhMyDat
    function #oh_my_dat:please

## 一時保存
    data modify storage calculation: gimmic.eye set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].floodedpazzle.gimmic.eye

## ロード
    execute store result score $floodedpazzle:gimmic/eye/check.rx/min temporary run data get storage calculation: gimmic.eye.rx.min 1
    execute store result score $floodedpazzle:gimmic/eye/check.rx/max temporary run data get storage calculation: gimmic.eye.rx.max 1
    execute store result score $floodedpazzle:gimmic/eye/check.ry/min temporary run data get storage calculation: gimmic.eye.ry.min 1
    execute store result score $floodedpazzle:gimmic/eye/check.ry/max temporary run data get storage calculation: gimmic.eye.ry.max 1
    execute store result score $floodedpazzle:gimmic/eye/check.lose temporary run data get storage calculation: gimmic.eye.lose 1
    execute store result score $floodedpazzle:gimmic/eye/check.distance temporary run data get storage calculation: gimmic.eye.distance 1

## Detect
    execute as @a run function floodedpazzle:gimmic/eye/detect

## Tag
    tag @s remove eye.target
