#> text_particle:particle/macro
#
# 
#
# @within function text_particle:particle/tick

# 0~9
    $execute if score @s TextParticle.Tick matches 0..9 run data modify entity @s text set value '[{"text":"\\uE00$(Tick)","font":"particle/$(Font)","color":"#$(Color)"},{"text":"\\uE000","font":"text_particle/space"}]'

# 10~99
    $execute if score @s TextParticle.Tick matches 10..99 run data modify entity @s text set value '[{"text":"\\uE0$(Tick)","font":"particle/$(Font)","color":"#$(Color)"},{"text":"\\uE000","font":"text_particle/space"}]'