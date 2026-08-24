extends Node2D

@export var nameOfResdident: String
@export var spriteOfHouse: Texture

var houseSprite: Sprite2D

func _ready() -> void:
	houseSprite = $HouseSprite
	houseSprite.texture = spriteOfHouse


func _on_static_body_2d_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.is_pressed():
		print(nameOfResdident)
