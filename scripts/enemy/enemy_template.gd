extends KinematicBody2D
class_name EnemyTemplate

onready var texture: Sprite = get_node("Texture")
onready var floor_ray: RayCast2D = get_node("FloorRay")
onready var animation: AnimationPlayer = get_node("Animation")

var can_die: bool = false
var can_hit: bool = false
var can_attack: bool = false

var velocity: Vector2
var player_ref: Player = null 

export(int) var speed
export(int) var gravity_speed
export(int) var proximity_threshold

func _physics_process(delta: float) -> void:
	gravity(delta)
	move_behavior()
	
func gravity(delta: float) -> void:
	velocity.y += delta * gravity_speed
	
	
func move_behavior() -> void:
	if player_ref != null:
		var distance: Vector2 = player_ref.global_position - global_position
		var direction: Vector2 = distance.normalized()
	
