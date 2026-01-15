# ## this creates a raycast targeted to a specific entity
#
# @context any
# @macros
#   player_selector: (string); desired player to invoke the raycast
#   target_selector: (string); target entity
#   target_center: (float); target's vertical center
#   ray_length: (int); blocks that the raycast will travel
#   ray_args: (string); custom arguments/rules for the raycast travelling. leave blank if any.
#   temp: (string); temporary storage path name

$data merge storage julliapi:player {\
  raycast: {\
    $(temp): {\
      player_selector:'$(player_selector)',\
      target_selector:'$(target_selector)',\
      target_center:'$(target_center)',\
      ray_length:$(ray_length),\
      ray_args:'$(ray_args)',\
      temp:'$(temp)'\
    }\
  }\
}

$execute as $(player_selector) at @s run function julliapi:player/raycast/targeted/set with storage julliapi:player raycast.$(temp)

$data remove storage julliapi:player raycast.$(temp)
