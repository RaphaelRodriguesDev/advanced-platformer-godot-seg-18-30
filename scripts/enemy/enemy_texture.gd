extends Sprite
class_name EnemyTexture

export (NodePath) onready var attack_area_collision = get_node(attack_area_collision) as CollisionShape2D
export (NodePath) onready var animation = get_node(animation) as AnimationPlayer
export (NodePath) onready var enemy = get_node(enemy) as KinematicBody2D

func animate(_velocity: Vector2) -> void:
	pass

func on_animation_finished(_anim_name: String):
	pass # Replace with function body.
