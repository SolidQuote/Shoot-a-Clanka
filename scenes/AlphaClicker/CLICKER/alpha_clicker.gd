class_name AlphaClicker
extends Control
## A game where you shoot clankas

## Reference to the label displaying the current amount of clankas
@export var label : Label
## Current amount of clankas shot
var clankers : int = 0

## Initialize the label at launch
func _ready() -> void:
	update_label_text()


## Shoot 1 clanka
func shoot_clankas() -> void:
	clankers += 1
	update_label_text()
	## Update the text of the label to reflect the new change in Clankas shot
func update_label_text() -> void:
	label.text = "Clankers : %s" %clankers
	
	## Triggered when the clanker is shot
func _on_button_pressed() -> void:
	shoot_clankas()
	
	$Click.play()
	
	
	
