class_name Weapon
extends CharacterBody2D
@export_category("Main Properties")
@export var weapon_name:String
@export var shoot_speed:int
@export_category("Magazine")
@export var magazine_size:int
@export var magazine_quantity:int

func _ready():
	var magazine:int = magazine_size * magazine_quantity

func _physics_process(delta):
	pass
