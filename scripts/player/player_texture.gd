extends Sprite
class_name PlayerTexture

var suffix: String = "_right"
var normal_attack: bool = false

export(NodePath) var animation_path
export(NodePath) var player_path

onready var animation = get_node(animation_path) if animation_path != null else null
onready var player = get_node(player_path) if player_path != null else null

func _ready():
	if animation and not animation.is_connected("animation_finished", self, "on_animation_finished"):
		animation.connect("animation_finished", self, "on_animation_finished")

func animate(direction: Vector2) -> void:
	verify_position(direction)
	if player.attacking or player.defending or player.crouching or player.next_to_wall():
		action_behavior()
	elif direction.y != 0:
		vertical_behavior(direction)
	elif player.landing == true:
		animation.play("landing")
		player.set_physics_process(false)
	else:
		horizontal_behavior(direction)

func verify_position(direction: Vector2) -> void:
	if direction.x > 0:
		flip_h = false
		suffix = "_right"
		player.direction = -1
		position = Vector2.ZERO
		player.wall_ray.cast_to = Vector2(5.5, 0)
	elif direction.x < 0:
		flip_h = true
		suffix = "_left"
		player.direction = 1
		position = Vector2(-2,0)
		player.wall_ray.cast_to = Vector2(-7.5, 0)

func action_behavior() -> void:
	if player.next_to_wall():
		animation.play("wall_slide")
	elif player.attacking and normal_attack:
		animation.play("attack" + suffix)
	elif player.defending:
		if animation.current_animation != "shield":
			if animation.has_animation("shield"):
				animation.play("shield")
				animation.stop()
				animation.seek(animation.get_animation("shield").length, true)
	elif player.crouching:
		if animation.current_animation != "crouch":
			if animation.has_animation("crouch"):
				animation.play("crouch")
				animation.stop()
				animation.seek(animation.get_animation("crouch").length, true)
func vertical_behavior(direction: Vector2) -> void:
	if direction.y > 0:
		player.landing = true
		animation.play("fall")
	elif direction.y < 0:
		animation.play("jump")

func horizontal_behavior(direction: Vector2) -> void:
	if direction.x != 0:
		animation.play("run")
	else:
		animation.play("idle")

func on_animation_finished(anim_name):
	match anim_name:
		"landing":
			player.landing = false
			player.set_physics_process(true)

		"attack_left", "attack_right":
			normal_attack = false
			player.attacking = false
