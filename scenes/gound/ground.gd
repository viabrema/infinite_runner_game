extends StaticBody2D

const MOVE_SPEED = 300.0  # Velocidade de movimento do chão/cenário

func _process(delta: float) -> void:
	# Move o chão e o fundo para a esquerda
	position.x -= MOVE_SPEED * delta
	
	# Verifica se o objeto está fora da tela (assumindo que a largura do cenário seja maior que a largura da tela)
	if position.x < -get_width():
		# Reposiciona o objeto à direita para continuar o loop
		position.x += get_width() * 2

# Função para pegar a largura do nó baseado na forma
func get_width() -> float:
	if has_node("CollisionShape2D"):
		var collision_shape = $CollisionShape2D.shape
		if collision_shape is RectangleShape2D:
			return collision_shape.extents.x * 2
	return 0.0
