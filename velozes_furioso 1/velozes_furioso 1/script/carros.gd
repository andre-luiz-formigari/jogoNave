extends StaticBody2D

@export var textura : Array[Texture] 
@export var indentificar_carro:int
var local_inicial = Vector2(70,81.781)
@onready var sprite = $Sprite2D
@onready var botao_player1 = get_node("/root/World/botaão_player1")
@onready var botao_player2 = get_node("/root/World/botão_player2")
var velocidade = 0
@onready var  cronometro = 0
var contador_volta = 0
func _ready():
	if indentificar_carro == 1:
		global_position = local_inicial
		sprite.set_texture(textura[0])
		
	if indentificar_carro == 2:
		global_position = local_inicial
		global_position.y = global_position.y + 150
		sprite.set_texture(textura[1])
		
		

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if indentificar_carro == 1 and global_position.x >= 1045:
		contador_volta = contador_volta + 1
		global_position.x = 70
		global_position.y = 81.781
		if contador_volta == 7:
			Events.auxiliar = 1
	if indentificar_carro == 2 and global_position.x >= 1045:
		contador_volta = contador_volta + 1
		global_position.x = 70
		global_position.y = 231.781
		if contador_volta == 7:
			Events.auxiliar = 0
	if cronometro > 2:
		botoes_clicados_carro1()
		botoes_clicados_carro2()
		botoesErrados()
	andar(delta)
func andar(delta):
	if indentificar_carro == 1:
		global_position.x +=  velocidade * delta
	if indentificar_carro == 2:
		global_position.x +=  velocidade * delta
	
func botoes_clicados_carro1():
	if indentificar_carro == 1:
		if Input.is_action_just_pressed("w") and Events.botao2 == 0:
			velocidade = velocidade + 100
			botao_player2.aleatorio()
		if Input.is_action_just_pressed("s") and Events.botao2 == 1:
				velocidade = velocidade + 100
				botao_player2.aleatorio()
		if Input.is_action_just_pressed("a") and Events.botao2 == 3:
				velocidade = velocidade + 100
				botao_player2.aleatorio()
		if Input.is_action_just_pressed("d") and Events.botao2 == 2:
				velocidade = velocidade + 100
				botao_player2.aleatorio()


func botoes_clicados_carro2():
	if indentificar_carro == 2:
		if Input.is_action_just_pressed("cima")  and Events.botao1 == 0:
			velocidade = velocidade + 100
			botao_player1.aleatorio()
		if Input.is_action_just_pressed("lado_esquerdo")  and Events.botao1 == 2:
			velocidade = velocidade + 100
			botao_player1.aleatorio()
		if Input.is_action_just_pressed("baixo") and Events.botao1 == 1:
			velocidade = velocidade + 100
			botao_player1.aleatorio()
		if Input.is_action_just_pressed("lado_direito")  and Events.botao1 == 3:
			velocidade = velocidade + 100
			botao_player1.aleatorio()

func botoesErrados():
	if indentificar_carro == 1:
		if Input.is_action_just_pressed("w") and Events.botao2 != 0:
			if velocidade > 0:
				if velocidade > 0:
					velocidade = velocidade - 50
			botao_player2.aleatorio()
		if Input.is_action_just_pressed("s") and Events.botao2 != 1:
				if velocidade > 0:
					velocidade = velocidade - 50
				botao_player2.aleatorio()
		if Input.is_action_just_pressed("a") and Events.botao2 != 3:
				if velocidade > 0:
					velocidade = velocidade - 50
				botao_player2.aleatorio()
		if Input.is_action_just_pressed("d") and Events.botao2 != 2:
				if velocidade > 0:
					velocidade = velocidade - 50
				botao_player2.aleatorio()
	if indentificar_carro == 2:
		if Input.is_action_just_pressed("cima")  and Events.botao1 != 0:
			if velocidade > 0:
				velocidade = velocidade - 50
			botao_player1.aleatorio()
		if Input.is_action_just_pressed("lado_esquerdo")  and Events.botao1 != 2:
			if velocidade > 0:
				velocidade = velocidade - 50
			botao_player1.aleatorio()
		if Input.is_action_just_pressed("baixo") and Events.botao1 != 1:
			if velocidade > 0:
				velocidade = velocidade - 50
			botao_player1.aleatorio()
		if Input.is_action_just_pressed("lado_direito")  and Events.botao1 != 3:
			if velocidade > 0:
				velocidade = velocidade - 50
			botao_player1.aleatorio()


func _on_timer_timeout() -> void:
	cronometro = cronometro + 1


func _on_reduzir_velocidade_timeout():
	if velocidade > 0:
		velocidade = velocidade - 100
