extends Button


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if Events.auxiliar == 1:
		text = "verde_ganhou"
	if Events.auxiliar == 0:
		text = "vermelho_ganhou"
		


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
