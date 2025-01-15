class_name DamageComponent
extends Node2D

@export var max_damage : int = 1
@export var current_damage : int = 0

signal max_damage_reached

func apply_damage(damage : int) -> void:
	#clamp is there to ensure that current damage does not exceed max damage
	current_damage = clamp(current_damage + damage, 0, max_damage)

	if current_damage == max_damage:
		max_damage_reached.emit()