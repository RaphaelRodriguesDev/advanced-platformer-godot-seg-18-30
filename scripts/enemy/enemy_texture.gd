extends Sprite
class_name EnemyTexture

export (NodePath) var attack_area_collision_path
export (NodePath) var animation_path
export (NodePath) var enemy_path

onready var attack_area_collision = get_node(attack_area_collision_path) as CollisionShape2D
onready var animation = get_node(animation_path) as AnimationPlayer
onready var enemy = get_node(enemy_path) as KinematicBody2D

func animate(_velocity: Vector2) -> void:
	pass

func on_animation_finished(_anim_name: String):
	pass
