#> floodedpazzle:gimmic/button/apply
# ボタンに変換
# @api

## OhMyDat
    function #oh_my_dat:please

    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].floodedpazzle.gimmic.button set from storage floodedpazzle: input.button

## データ
    data modify entity @s Silent set value 1b
    data modify entity @s ItemRotation set from storage calculation: gimmic.button.rotation.default
    data modify entity @s Invisible set value 1b
    data modify entity @s Invulnerable set value 1b
    data modify entity @s Fixed set value 0b
    data modify entity @s Tags append value gimmic
    data modify entity @s Tags append value gimmic.button

## リセット
    #data modify storage floodedpazzle: input.button set value {rotation:{default:0b,pushed:1b},time:-1,push_t:0}
    function calculation:reset/_

