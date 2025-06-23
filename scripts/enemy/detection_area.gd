extends Area2D
class_name DetectionArea

export(NodePath) var enemy_path
onready var enemy = get_node(enemy_path) as KinematicBody2D

func _ready():
	if not enemy:
		printerr("Erro: O nó 'enemy' não foi configurado corretamente ou não é um KinematicBody2D. Caminho: ", enemy_path)

func on_body_entered(body: Player) -> void:
	if enemy:
		enemy.player_ref = body
	else:
		printerr("Erro: Não foi possível definir player_ref, enemy é null")

func on_body_exited(_body: Player) -> void:
	if enemy:
		enemy.player_ref = null
	else:
		printerr("Erro: Não foi possível limpar player_ref, enemy é null")
