@tool
extends Node2D

@export  var draw_caves : bool:  
	set(value) : set_draw_caves(value)


# this scene exists solely to run redraw on Caves.tscn
# without the tilemap selected, so the grid isn't shown in
# the webp animation on the blog post

func set_draw_caves(value = null) -> void:

	# only do this if we are working in the editor
	if !Engine.is_editor_hint(): return

	$Caves.redraw()
# get_type or typeof $Caves.redraw() to make a properly typed the func
	return
