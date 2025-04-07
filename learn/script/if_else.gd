extends Node2D

var enemy_health: int = 5

var base_attack: int = 2
var bonus_attack: int = 3

var calc_dano: int = base_attack + bonus_attack >= enemy_health

var can_attack: bool = false

func _ready():
	update_enemy_health()

func update_enemy_health() -> void:
	if calc_dano:
#		print("Matou o Inimigo.")
		pass
	elif base_attack + bonus_attack >= 3:
#		print("Inimigo tomou 60% da vida em dano.")	
		pass
	else:
#		print("Não Matou o Inimigo.")
		pass
