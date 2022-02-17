#> floodedpazzle:oxygen/show_meter
# @within function floodedpazzle:oxygen/tick

## 割合計算 10段階
    scoreboard players set $10 temporary 10

    scoreboard players operation $oxygen.rate temporary = @s floodedpazzle.oxygen
    scoreboard players operation $oxygen.rate temporary *= $10 temporary
    scoreboard players remove $oxygen.rate temporary 1
    scoreboard players operation $oxygen.rate temporary /= @s floodedpazzle.maxoxygen
    scoreboard players add $oxygen.rate temporary 1

## Left Meter
    execute if score $oxygen.rate temporary matches 10 run data modify storage calculation: oxygen.meter0 set from storage floodedpazzle: oxygen.strings.meter0
    execute if score $oxygen.rate temporary matches 09 run data modify storage calculation: oxygen.meter0 set from storage floodedpazzle: oxygen.strings.meter1
    execute if score $oxygen.rate temporary matches 08 run data modify storage calculation: oxygen.meter0 set from storage floodedpazzle: oxygen.strings.meter2
    execute if score $oxygen.rate temporary matches 07 run data modify storage calculation: oxygen.meter0 set from storage floodedpazzle: oxygen.strings.meter3
    execute if score $oxygen.rate temporary matches 06 run data modify storage calculation: oxygen.meter0 set from storage floodedpazzle: oxygen.strings.meter4
    execute if score $oxygen.rate temporary matches ..05 run data modify storage calculation: oxygen.meter0 set from storage floodedpazzle: oxygen.strings.meter5

## Right Meter
    execute if score $oxygen.rate temporary matches 05.. run data modify storage calculation: oxygen.meter1 set from storage floodedpazzle: oxygen.strings.meter0
    execute if score $oxygen.rate temporary matches 04 run data modify storage calculation: oxygen.meter1 set from storage floodedpazzle: oxygen.strings.meter1
    execute if score $oxygen.rate temporary matches 03 run data modify storage calculation: oxygen.meter1 set from storage floodedpazzle: oxygen.strings.meter2
    execute if score $oxygen.rate temporary matches 02 run data modify storage calculation: oxygen.meter1 set from storage floodedpazzle: oxygen.strings.meter3
    execute if score $oxygen.rate temporary matches 01 run data modify storage calculation: oxygen.meter1 set from storage floodedpazzle: oxygen.strings.meter4
    execute if score $oxygen.rate temporary matches ..00 run data modify storage calculation: oxygen.meter1 set from storage floodedpazzle: oxygen.strings.meter5

## 数値
    scoreboard players set $20 temporary 20
    scoreboard players set $60 temporary 60
    scoreboard players operation $oxygen.min temporary = @s floodedpazzle.oxygen
    scoreboard players add $oxygen.min temporary 19
    scoreboard players operation $oxygen.min temporary /= $20 temporary
    scoreboard players operation $oxygen.min temporary /= $60 temporary
    scoreboard players operation $oxygen.min temporary %= $60 temporary
    
    scoreboard players operation $oxygen.sec temporary = @s floodedpazzle.oxygen
    scoreboard players add $oxygen.sec temporary 19
    scoreboard players operation $oxygen.sec temporary /= $20 temporary
    scoreboard players operation $oxygen.sec temporary %= $60 temporary

    execute if score $oxygen.min temporary matches 0..9 run data modify storage calculation: oxygen.min set from storage floodedpazzle: oxygen.strings.min1
    execute if score $oxygen.min temporary matches 10..99 run data modify storage calculation: oxygen.min set from storage floodedpazzle: oxygen.strings.min0
    execute if score $oxygen.sec temporary matches 0..9 run data modify storage calculation: oxygen.sec set from storage floodedpazzle: oxygen.strings.sec1
    execute if score $oxygen.sec temporary matches 10..99 run data modify storage calculation: oxygen.sec set from storage floodedpazzle: oxygen.strings.sec0

## 表示
    title @s actionbar ["",{"nbt":"oxygen.meter0","storage": "calculation:","interpret": true,"bold": true},{"nbt":"oxygen.min","storage": "calculation:","interpret": true},{"text": ":"},{"nbt":"oxygen.sec","storage": "calculation:","interpret": true},{"nbt":"oxygen.meter1","storage": "calculation:","interpret": true,"bold": true}]
