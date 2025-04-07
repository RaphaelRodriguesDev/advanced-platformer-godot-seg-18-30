extends Node2D

var item: Dictionary = {
	"nome": "Espada",
	"Preco": 20,
}



func _ready():
	print(item.nome, " ", item.Preco)
