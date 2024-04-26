@tool
extends Node


# the percent chance something happens
func chance(num : int) -> bool:
	randomize()

	if randi() % 100 <= num:  return true
	else:                     return false


# Util.choose(["one", "two"])   returns one or two
func choose(choices):
	randomize()

	var rand_index = randi() % choices.size()
	return choices[rand_index]
# get_type or typeof choices[rand_index] to make a properly typed the func
# reread the tuts https://abitawake.com/news/articles/procedural-generation-with-godot-creating-caves-with-cellular-automata
