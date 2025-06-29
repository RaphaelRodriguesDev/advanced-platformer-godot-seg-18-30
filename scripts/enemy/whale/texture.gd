extends EnemyTexture
class_name WhaleTexture

func animate(velocity: Vector2) -> void:
	move_behavior(velocity)
	
func move_behavior(velocity: Vector2) -> void:
	if animation:
		if velocity.x != 0:
			animation.play("run")
		else:
			animation.play("idle")
	else:
		print("Erro: AnimationPlayer não está configurado corretamente!")
