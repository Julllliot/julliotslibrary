#must execute as target entity; and optional at @s

$execute if entity @s[tag=!julliapi.timer.triggered,tag=!julliapi.timer.end] run data merge storage julliapi:timer \
{\
    $(temp_memory):\
    {\
        store_ticks_get:$(store_ticks_get),\
        exe_timer_loop_args:$(exe_timer_loop_args),\
        temp_memory_pointer:$(temp_memory) \
    }\
}

$execute if entity @s[tag=!julliapi.timer.triggered,tag=!julliapi.timer.end] run function julliot:timer/set_scores {store_ticks_get:$(store_ticks_get),exe_repeat_args:$(exe_repeat_args),repeat:$(repeat)}

$execute if entity @s[tag=julliapi.timer.triggered,tag=!julliapi.timer.end] run function julliot:timer/loop with storage julliapi:timer $(temp_memory_pointer)