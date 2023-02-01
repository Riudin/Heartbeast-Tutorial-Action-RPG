extends Node

export(int) var max_health = 100 setget set_max_health
var health = max_health setget set_health
export(int) var max_mana = 100 setget set_max_mana
var mana = max_mana setget set_mana

signal no_health
signal health_changed(value)
signal max_health_changed(value)
signal mana_changed(value)
signal max_mana_changed(value)

func set_max_health(value):
	max_health = value
	self.health = min(health, max_health)
	emit_signal("max_health_changed", max_health)

func set_health(value):
	health = value
	emit_signal("health_changed", health)
	if health <= 0:
		emit_signal("no_health")

func set_max_mana(value):
	max_health = value
	self.mana = min(mana, max_mana)
	emit_signal("max_mana_changed", max_mana)

func set_mana(value):
	mana = value
	emit_signal("mana_changed", mana)

func _ready():
	self.health = max_health
	self.mana = max_mana
