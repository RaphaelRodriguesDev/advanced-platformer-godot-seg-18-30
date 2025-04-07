extends Node2D
class_name player_name

var hello_world = "Hello World"
var first_name = "Raphael"
var last_name = "Rodrigues"

var fn1 = 1.52
var fn2 = 1.33
var invencibilidade = 1.5

var base_attack: int = 1
var bonus_attack: int = 1



func _ready():
#	print(first_name + " " + last_name)
#	print (base_attack + bonus_attack)
	pass

#var a = 2; 
#var b = 3;
#var soma = a + b;
#
## A função ready vai ser chamada quando este objeto entrar na cena pela primeira vez
## tudo que tiver dentro dela vai ser chamada na primeira vez que 
## Roda apenas 1 vez
#func _ready():
#	print(soma);
#
## Essa função vai ser chamada a cada frame do jogo
## Delta é o valor estimado desde o último frame
#func _process(delta):
#	print(delta)
#
##É parecida com o process mas lida diretamente com a física do jogo 
#func _physics_process(delta):
#	pass
#
#func test():
#	pass


