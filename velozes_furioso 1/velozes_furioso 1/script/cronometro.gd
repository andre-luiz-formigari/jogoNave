extends StaticBody2D

@export var teste: Array[Texture]
@onready var sprite = $Sprite2D
var auxiliar = 1

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	global_position.y += 120
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	sprite.set_texture(teste[auxiliar])
	
	

func _on_timer_timeout() -> void:
	if auxiliar == 3:
		visible = false
	if auxiliar < 3:
		auxiliar = auxiliar + 1
	if auxiliar == 2:
		global_position.y -= 160


func _on_timer_2_timeout() -> void:
	global_position.y += 90
