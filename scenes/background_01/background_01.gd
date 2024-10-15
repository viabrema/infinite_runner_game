extends Node2D

@export var MOVE_SPEED = 300.0 # Velocidade de movimento do chão/cenário

func _process(delta: float) -> void:
	# Move o chão e o fundo para a esquerda
	position.x -= MOVE_SPEED * delta
	
	# Verifica se o objeto está fora da tela (assumindo que a largura do cenário seja maior que a largura da tela)
	if position.x < -get_width():
		# Reposiciona o objeto à direita para continuar o loop
		position.x += get_width() * 2

# Função para pegar a largura do nó baseado na forma
func get_width() -> float:
	return get_viewport_rect().size.x
