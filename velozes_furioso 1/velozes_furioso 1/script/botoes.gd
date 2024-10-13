extends StaticBody2D
@onready var sprite = $Sprite2D
@export var textura_p1 : Array[Texture]
@export var textura_p2 : Array[Texture]
@export var indentificar_botão = 0

var local_inicial_botoes = Vector2(210, 524)


func _ready() -> void:
	aleatorio()
	if indentificar_botão == 1:
		global_position = local_inicial_botoes
		
	if indentificar_botão == 2:
		global_position = local_inicial_botoes 
		global_position.x = global_position.x + 200

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	#if Input.is_action_pressed("cima"):
		#global_position.y -= 700 * delta
	#if Input.is_action_pressed("baixo"):
		#global_position.y += 700 * delta
	#if Input.is_action_pressed("lado_esquerdo"):
		#global_position.x -= 700 * delta
	#if Input.is_action_pressed("lado_direito"):
		#global_position.x += 700 * delta
	
func aleatorio():
	if indentificar_botão == 1:
		var randomNumero= randi_range(0,3) 
		Events.botao1 = randomNumero
		sprite.texture = textura_p1[randomNumero]
		#print(Events.botao1)
	if indentificar_botão == 2:
		Events.botao2 = randi_range(0,3) 
		sprite.set_texture(textura_p2[Events.botao2])
		#print(Events.botao2)
	

func botoes_clicados():
	pass
#Sprite_texture.set_texture(hearth_Sprite[0])
