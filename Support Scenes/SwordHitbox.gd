extends "res://Support Scenes/Hitbox.gd"

var knockback_vector = Vector2.ZERO

onready var collisionShape = $CollisionShape2D

func _ready():
	collisionShape.disabled = true
