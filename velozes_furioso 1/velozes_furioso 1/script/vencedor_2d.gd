extends StaticBody2D


@export var vencedor : Array[Texture] 
@onready var Sprite = $Sprite2D
var velocidade = 700
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	visible = false


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Events.auxiliar == 0 or Events.auxiliar == 1:
		get_tree().change_scene_to_file("res://cenas/imagem_final.tscn")
		
		
	
func aparencia():
	if Events.auxiliar == 0:
		Sprite.set_texture(vencedor[0])
	if Events.auxiliar == 1:
		Sprite.set_texture(vencedor[1])
