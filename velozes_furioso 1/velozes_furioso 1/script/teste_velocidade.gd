extends StaticBody2D

var velocidade = 0
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	mover(delta)
	mudar_velocidade()
func mudar_velocidade():
	if Input.is_action_just_pressed("w"):
		velocidade = velocidade + 100
	if Input.is_action_just_pressed("s") :
				velocidade = velocidade + 100
	if Input.is_action_just_pressed("a"):
				velocidade = velocidade + 100
	if Input.is_action_just_pressed("d"):
				velocidade = velocidade + 100
func mover(delta):
	global_position.x +=  velocidade * delta


func _on_timer_timeout() -> void:
	velocidade = velocidade - 100







	#botoes_clicados_errados()
	#if Input.is_action_pressed("cima"):
		#global_position.y -= 700 * delta
	#if Input.is_action_pressed("baixo"):
		#global_position.y += 700 * delta
	#if Input.is_action_pressed("lado_esquerdo"):
		#global_position.x -= 700 * delta
	#if Input.is_action_pressed("lado_direito"):
		#global_position.x += 700 * delta
	#print(global_position)
#func botoes_clicados_carro1():
	#if indentificar_carro == 1:
		#if Input.is_action_just_pressed("w") and Events.botao2 == 0:
			#global_position.x = global_position.x + velocidade 
			#botao_player2.aleatorio()
		#if Input.is_action_just_pressed("s") and Events.botao2 == 1:
				#global_position.x = global_position.x + velocidade
				#botao_player2.aleatorio()
		#if Input.is_action_just_pressed("a") and Events.botao2 == 3:
				#global_position.x = global_position.x + velocidade
				#botao_player2.aleatorio()
		#if Input.is_action_just_pressed("d") and Events.botao2 == 2:
				#global_position.x = global_position.x + velocidade
				#botao_player2.aleatorio()
#func botoes_clicados_carro2():
	#if indentificar_carro == 2:
		#if Input.is_action_just_pressed("cima")  and Events.botao1 == 0:
			#global_position.x = global_position.x + velocidade
			#botao_player1.aleatorio()
		#if Input.is_action_just_pressed("lado_esquerdo")  and Events.botao1 == 2:
			#global_position.x = global_position.x + velocidade
			#botao_player1.aleatorio()
		#if Input.is_action_just_pressed("baixo") and Events.botao1 == 1:
			#global_position.x = global_position.x + velocidade
			#botao_player1.aleatorio()
		#if Input.is_action_just_pressed("lado_direito")  and Events.botao1 == 3:
			#global_position.x = global_position.x + velocidade
			#botao_player1.aleatorio()
#func botoesErrados():
	#if indentificar_carro == 1:
		#if Input.is_action_just_pressed("w") and Events.botao2 != 0:
			#global_position.x = global_position.x - (velocidade / 2) 
			#botao_playevelocidade = velocidade + 100r2.aleatorio()
		#if Input.is_action_just_pressed("s") and Events.botao2 != 1:
				#global_position.x = global_position.x - (velocidade / 2) 
				#botao_player2.aleatorio()
		#if Input.is_actiovelocidade = velocidade + 100n_just_pressed("a") and Events.botao2 != 3:
				#global_position.x = global_position.x - (velocidade / 2) 
				#botao_player2.aleatorio()
		#if Input.is_action_just_pressed("d") and Events.botao2 != 2:
				#global_position.x = global_position.x - (velocidade / 2) 
				#botao_player2.aleatorio()
	#if indentificar_carro == 2:
		#if Input.is_action_just_pressed("cima")  and Events.botao1 != 0:
			#global_position.x = global_position.x - (velocidade / 2) 
			#botao_player1.aleatorio()
		#if Input.is_action_just_pressed("lado_esquerdo")  and Events.botao1 != 2:
			#global_position.x = global_position.x - (velocidade / 2) 
			#botao_player1.aleatorio()
		#if Input.is_action_just_pressed("baixo") and Events.botao1 != 1:
			#global_position.x = global_position.x - (velocidade / 2) 
			#botao_player1.aleatorio()
		#if Input.is_action_just_pressed("lado_direito")  and Events.botao1 != 3:
			#global_position.x = global_position.x - (velocidade / 2) 
			#botao_player1.aleatorio()
