extends Node2D
#
#var enemy_health: int = 5
#
#var base_attack: int = 2
#var bonus_attack: int = 3
#
#var calc_dano: int = base_attack + bonus_attack >= enemy_health
#
#var can_attack: bool = false
#
#func _ready():
#	print(update_enemy_health())
#
#func update_enemy_health() -> String:
#	if can_attack == true:
#		if calc_dano:
#			return "Matou o Inimigo."
#		elif base_attack + bonus_attack >= 3:
#			return "Inimigo tomou 60% da vida em dano."	
#		else:
#			return "Não Matou o Inimigo."
#	else: 
#		return "Personagem impossibilitado de atacar."
#
