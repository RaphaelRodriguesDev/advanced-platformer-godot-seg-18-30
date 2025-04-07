extends Node2D
#class_name player
#
#export(int) var attack = 0
#export(int) var defesa = 0
#export(String, MULTILINE) var dialog_text
#export(int, 0, 150, 5) var number = 0
#export(String, "Rebecca", "Mary", "Leah") var character_name
#export(float, EXP, 100, 1000, 20) var xp
#export(Array, int, "Red", "Green", "Blue") var enums = [2, 1, 0]
#
#
#func _ready():
#	print(attack, defesa)
##	print (dialog_text)
#	print(character_name)
#	print(xp)
#	print(enums)
