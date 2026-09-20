extends Node2D

@onready var sprite_2d: Sprite2D = $Mina
@onready var expresion_1: Sprite2D = $Mina/Expresion1
@onready var expresion_2: Sprite2D = $Mina/Expresion2
@onready var expresion_3: Sprite2D = $Mina/Expresion3
@onready var expresion_4: Sprite2D = $Mina/Expresion4
@onready var expresion_5: Sprite2D = $Mina/Expresion5
@onready var expresion_6: Sprite2D = $Mina/Expresion6
@onready var expresion_7: Sprite2D = $Mina/Expresion7


var tween : Tween
var tweenE1 : Tween
var tweenE2 : Tween
var tweenE3 : Tween
var tweenE4 : Tween
var tweenE5 : Tween
var tweenE6 : Tween
var tweenE7 : Tween

func _ready() -> void:
	nada()
	animacion()

func animacion():
	while true:
		var n = randi_range(1, 100)
		if n >= 20:
			var x = randi_range(1, 8)
			match x:
				1:
					sprite_2d.texture = preload("res://sprites/personajes/MissingBo/MissingBo1.png")
				2:
					sprite_2d.texture = preload("res://sprites/personajes/MissingBo/MissingBo2.png")
				3:
					sprite_2d.texture = preload("res://sprites/personajes/MissingBo/MissingBo3.png")
				4:
					sprite_2d.texture = preload("res://sprites/personajes/MissingBo/MissingBo4.png")
				5:
					sprite_2d.texture = preload("res://sprites/personajes/MissingBo/MissingBo5.png")
				6:
					sprite_2d.texture = preload("res://sprites/personajes/MissingBo/MissingBo13.png")
				7:
					sprite_2d.texture = preload("res://sprites/personajes/MissingBo/MissingBo14.png")
				8:
					sprite_2d.texture = preload("res://sprites/personajes/MissingBo/MissingBo15.png")
		elif n >= 4:
			var x = randi_range(1, 3)
			match x:
				1:
					sprite_2d.texture = preload("res://sprites/personajes/MissingBo/MissingBo11.png")
				2:
					sprite_2d.texture = preload("res://sprites/personajes/MissingBo/MissingBo12.png")
		else:
			var x = randi_range(1, 7)
			match x:
				1:
					sprite_2d.texture = preload("res://sprites/personajes/MissingBo/MissingBo6.png")
				2:
					sprite_2d.texture = preload("res://sprites/personajes/MissingBo/MissingBo7.png")
				3:
					sprite_2d.texture = preload("res://sprites/personajes/MissingBo/MissingBo8.png")
				4:
					sprite_2d.texture = preload("res://sprites/personajes/MissingBo/MissingBo9.png")
				5:
					sprite_2d.texture = preload("res://sprites/personajes/MissingBo/MissingBo10.png")
		var s = randf_range(0.2, 0.5)
		await get_tree().create_timer(s).timeout

func move(destino: Control, tiempo: float = 1):
	if tween != null && tween.is_valid():
		tween.kill()
	tween = create_tween()
	tween.set_trans(Tween.TRANS_SINE).set_ease(Tween.EASE_IN_OUT)
	tween.tween_property(self, "global_position", destino.global_position, tiempo)
	await tween.finished

func snap(destino: Control):
	global_position = destino.global_position
	

func enojado():
	var x = randi_range(1, 7)
	match x:
		1:
			if tweenE1 != null && tweenE1.is_valid():
				tweenE1.kill()
			expresion_1.modulate.a = 0
			expresion_1.texture = preload("res://sprites/expresiones/ESTOY ENOJADOOOO AAAAH.png")
			tweenE1 = create_tween()
			tweenE1.set_trans(Tween.TRANS_SINE).set_ease(Tween.EASE_IN_OUT)
			tweenE1.tween_property(expresion_1, "modulate:a", 1, 0.2)
		2:
			if tweenE2 != null && tweenE2.is_valid():
				tweenE2.kill()
			expresion_2.modulate.a = 0
			expresion_2.texture = preload("res://sprites/expresiones/ESTOY ENOJADOOOO AAAAH.png")
			tweenE2 = create_tween()
			tweenE2.set_trans(Tween.TRANS_SINE).set_ease(Tween.EASE_IN_OUT)
			tweenE2.tween_property(expresion_2, "modulate:a", 1, 0.2)
		3:
			if tweenE3 != null && tweenE3.is_valid():
				tweenE3.kill()
			expresion_3.modulate.a = 0
			expresion_3.texture = preload("res://sprites/expresiones/ESTOY ENOJADOOOO AAAAH.png")
			tweenE3 = create_tween()
			tweenE3.set_trans(Tween.TRANS_SINE).set_ease(Tween.EASE_IN_OUT)
			tweenE3.tween_property(expresion_3, "modulate:a", 1, 0.2)
		4:
			if tweenE4 != null && tweenE4.is_valid():
				tweenE4.kill()
			expresion_4.modulate.a = 0
			expresion_4.texture = preload("res://sprites/expresiones/ESTOY ENOJADOOOO AAAAH.png")
			tweenE4 = create_tween()
			tweenE4.set_trans(Tween.TRANS_SINE).set_ease(Tween.EASE_IN_OUT)
			tweenE4.tween_property(expresion_4, "modulate:a", 1, 0.2)
		5:
			if tweenE5 != null && tweenE5.is_valid():
				tweenE5.kill()
			expresion_5.modulate.a = 0
			expresion_5.texture = preload("res://sprites/expresiones/ESTOY ENOJADOOOO AAAAH.png")
			tweenE5 = create_tween()
			tweenE5.set_trans(Tween.TRANS_SINE).set_ease(Tween.EASE_IN_OUT)
			tweenE5.tween_property(expresion_5, "modulate:a", 1, 0.2)
		6:
			if tweenE6 != null && tweenE6.is_valid():
				tweenE6.kill()
			expresion_6.modulate.a = 0
			expresion_6.texture = preload("res://sprites/expresiones/ESTOY ENOJADOOOO AAAAH.png")
			tweenE6 = create_tween()
			tweenE6.set_trans(Tween.TRANS_SINE).set_ease(Tween.EASE_IN_OUT)
			tweenE6.tween_property(expresion_6, "modulate:a", 1, 0.2)
		7:
			if tweenE7 != null && tweenE7.is_valid():
				tweenE7.kill()
			expresion_7.modulate.a = 0
			expresion_7.texture = preload("res://sprites/expresiones/ESTOY ENOJADOOOO AAAAH.png")
			tweenE7 = create_tween()
			tweenE7.set_trans(Tween.TRANS_SINE).set_ease(Tween.EASE_IN_OUT)
			tweenE7.tween_property(expresion_7, "modulate:a", 1, 0.2)

func bajon():
	var x = randi_range(1, 7)
	match x:
		1:
			if tweenE1 != null && tweenE1.is_valid():
				tweenE1.kill()
			expresion_1.modulate.a = 0
			expresion_1.texture = preload("res://sprites/expresiones/Bajon.png")
			tweenE1 = create_tween()
			tweenE1.set_trans(Tween.TRANS_SINE).set_ease(Tween.EASE_IN_OUT)
			tweenE1.tween_property(expresion_1, "modulate:a", 1, 0.4)
		2:
			if tweenE2 != null && tweenE2.is_valid():
				tweenE2.kill()
			expresion_2.modulate.a = 0
			expresion_2.texture = preload("res://sprites/expresiones/Bajon.png")
			tweenE2 = create_tween()
			tweenE2.set_trans(Tween.TRANS_SINE).set_ease(Tween.EASE_IN_OUT)
			tweenE2.tween_property(expresion_2, "modulate:a", 1, 0.4)
		3:
			if tweenE3 != null && tweenE3.is_valid():
				tweenE3.kill()
			expresion_3.modulate.a = 0
			expresion_3.texture = preload("res://sprites/expresiones/Bajon.png")
			tweenE3 = create_tween()
			tweenE3.set_trans(Tween.TRANS_SINE).set_ease(Tween.EASE_IN_OUT)
			tweenE3.tween_property(expresion_3, "modulate:a", 1, 0.4)
		4:
			if tweenE4 != null && tweenE4.is_valid():
				tweenE4.kill()
			expresion_4.modulate.a = 0
			expresion_4.texture = preload("res://sprites/expresiones/Bajon.png")
			tweenE4 = create_tween()
			tweenE4.set_trans(Tween.TRANS_SINE).set_ease(Tween.EASE_IN_OUT)
			tweenE4.tween_property(expresion_4, "modulate:a", 1, 0.4)
		5:
			if tweenE5 != null && tweenE5.is_valid():
				tweenE5.kill()
			expresion_5.modulate.a = 0
			expresion_5.texture = preload("res://sprites/expresiones/Bajon.png")
			tweenE5 = create_tween()
			tweenE5.set_trans(Tween.TRANS_SINE).set_ease(Tween.EASE_IN_OUT)
			tweenE5.tween_property(expresion_5, "modulate:a", 1, 0.4)
		6:
			if tweenE6 != null && tweenE6.is_valid():
				tweenE6.kill()
			expresion_6.modulate.a = 0
			expresion_6.texture = preload("res://sprites/expresiones/Bajon.png")
			tweenE6 = create_tween()
			tweenE6.set_trans(Tween.TRANS_SINE).set_ease(Tween.EASE_IN_OUT)
			tweenE6.tween_property(expresion_6, "modulate:a", 1, 0.4)
		7:
			if tweenE7 != null && tweenE7.is_valid():
				tweenE7.kill()
			expresion_7.modulate.a = 0
			expresion_7.texture = preload("res://sprites/expresiones/Bajon.png")
			tweenE7 = create_tween()
			tweenE7.set_trans(Tween.TRANS_SINE).set_ease(Tween.EASE_IN_OUT)
			tweenE7.tween_property(expresion_7, "modulate:a", 1, 0.4)

func verguenza():
	var x = randi_range(1, 7)
	match x:
		1:
			if tweenE1 != null && tweenE1.is_valid():
				tweenE1.kill()
			expresion_1.modulate.a = 0
			expresion_1.texture = preload("res://sprites/expresiones/Gota.png")
			tweenE1 = create_tween()
			tweenE1.set_trans(Tween.TRANS_SINE).set_ease(Tween.EASE_IN_OUT)
			tweenE1.tween_property(expresion_1, "modulate:a", 1, 0.2)
		2:
			if tweenE2 != null && tweenE2.is_valid():
				tweenE2.kill()
			expresion_2.modulate.a = 0
			expresion_2.texture = preload("res://sprites/expresiones/Gota.png")
			tweenE2 = create_tween()
			tweenE2.set_trans(Tween.TRANS_SINE).set_ease(Tween.EASE_IN_OUT)
			tweenE2.tween_property(expresion_2, "modulate:a", 1, 0.2)
		3:
			if tweenE3 != null && tweenE3.is_valid():
				tweenE3.kill()
			expresion_3.modulate.a = 0
			expresion_3.texture = preload("res://sprites/expresiones/Gota.png")
			tweenE3 = create_tween()
			tweenE3.set_trans(Tween.TRANS_SINE).set_ease(Tween.EASE_IN_OUT)
			tweenE3.tween_property(expresion_3, "modulate:a", 1, 0.2)
		4:
			if tweenE4 != null && tweenE4.is_valid():
				tweenE4.kill()
			expresion_4.modulate.a = 0
			expresion_4.texture = preload("res://sprites/expresiones/Gota.png")
			tweenE4 = create_tween()
			tweenE4.set_trans(Tween.TRANS_SINE).set_ease(Tween.EASE_IN_OUT)
			tweenE4.tween_property(expresion_4, "modulate:a", 1, 0.2)
		5:
			if tweenE5 != null && tweenE5.is_valid():
				tweenE5.kill()
			expresion_5.modulate.a = 0
			expresion_5.texture = preload("res://sprites/expresiones/Gota.png")
			tweenE5 = create_tween()
			tweenE5.set_trans(Tween.TRANS_SINE).set_ease(Tween.EASE_IN_OUT)
			tweenE5.tween_property(expresion_5, "modulate:a", 1, 0.2)
		6:
			if tweenE6 != null && tweenE6.is_valid():
				tweenE6.kill()
			expresion_6.modulate.a = 0
			expresion_6.texture = preload("res://sprites/expresiones/Gota.png")
			tweenE6 = create_tween()
			tweenE6.set_trans(Tween.TRANS_SINE).set_ease(Tween.EASE_IN_OUT)
			tweenE6.tween_property(expresion_6, "modulate:a", 1, 0.2)
		7:
			if tweenE7 != null && tweenE7.is_valid():
				tweenE7.kill()
			expresion_7.modulate.a = 0
			expresion_7.texture = preload("res://sprites/expresiones/Gota.png")
			tweenE7 = create_tween()
			tweenE7.set_trans(Tween.TRANS_SINE).set_ease(Tween.EASE_IN_OUT)
			tweenE7.tween_property(expresion_7, "modulate:a", 1, 0.2)

func radiante():
	var x = randi_range(1, 7)
	match x:
		1:
			if tweenE1 != null && tweenE1.is_valid():
				tweenE1.kill()
			expresion_1.modulate.a = 0
			expresion_1.texture = preload("res://sprites/expresiones/brillito.png")
			tweenE1 = create_tween()
			tweenE1.set_trans(Tween.TRANS_SINE).set_ease(Tween.EASE_IN_OUT)
			tweenE1.tween_property(expresion_1, "modulate:a", 1, 0.3)
		2:
			if tweenE2 != null && tweenE2.is_valid():
				tweenE2.kill()
			expresion_2.modulate.a = 0
			expresion_2.texture = preload("res://sprites/expresiones/brillito.png")
			tweenE2 = create_tween()
			tweenE2.set_trans(Tween.TRANS_SINE).set_ease(Tween.EASE_IN_OUT)
			tweenE2.tween_property(expresion_2, "modulate:a", 1, 0.3)
		3:
			if tweenE3 != null && tweenE3.is_valid():
				tweenE3.kill()
			expresion_3.modulate.a = 0
			expresion_3.texture = preload("res://sprites/expresiones/brillito.png")
			tweenE3 = create_tween()
			tweenE3.set_trans(Tween.TRANS_SINE).set_ease(Tween.EASE_IN_OUT)
			tweenE3.tween_property(expresion_3, "modulate:a", 1, 0.3)
		4:
			if tweenE4 != null && tweenE4.is_valid():
				tweenE4.kill()
			expresion_4.modulate.a = 0
			expresion_4.texture = preload("res://sprites/expresiones/brillito.png")
			tweenE4 = create_tween()
			tweenE4.set_trans(Tween.TRANS_SINE).set_ease(Tween.EASE_IN_OUT)
			tweenE4.tween_property(expresion_4, "modulate:a", 1, 0.3)
		5:
			if tweenE5 != null && tweenE5.is_valid():
				tweenE5.kill()
			expresion_5.modulate.a = 0
			expresion_5.texture = preload("res://sprites/expresiones/brillito.png")
			tweenE5 = create_tween()
			tweenE5.set_trans(Tween.TRANS_SINE).set_ease(Tween.EASE_IN_OUT)
			tweenE5.tween_property(expresion_5, "modulate:a", 1, 0.3)
		6:
			if tweenE6 != null && tweenE6.is_valid():
				tweenE6.kill()
			expresion_6.modulate.a = 0
			expresion_6.texture = preload("res://sprites/expresiones/brillito.png")
			tweenE6 = create_tween()
			tweenE6.set_trans(Tween.TRANS_SINE).set_ease(Tween.EASE_IN_OUT)
			tweenE6.tween_property(expresion_6, "modulate:a", 1, 0.3)
		7:
			if tweenE7 != null && tweenE7.is_valid():
				tweenE7.kill()
			expresion_7.modulate.a = 0
			expresion_7.texture = preload("res://sprites/expresiones/brillito.png")
			tweenE7 = create_tween()
			tweenE7.set_trans(Tween.TRANS_SINE).set_ease(Tween.EASE_IN_OUT)
			tweenE7.tween_property(expresion_7, "modulate:a", 1, 0.3)

func estrez():
	var x = randi_range(1, 7)
	match x:
		1:
			if tweenE1 != null && tweenE1.is_valid():
				tweenE1.kill()
			expresion_1.modulate.a = 0
			expresion_1.texture = preload("res://sprites/expresiones/Molestia.png")
			tweenE1 = create_tween()
			tweenE1.set_trans(Tween.TRANS_SINE).set_ease(Tween.EASE_IN_OUT)
			tweenE1.tween_property(expresion_1, "modulate:a", 1, 0.2)
		2:
			if tweenE2 != null && tweenE2.is_valid():
				tweenE2.kill()
			expresion_2.modulate.a = 0
			expresion_2.texture = preload("res://sprites/expresiones/Molestia.png")
			tweenE2 = create_tween()
			tweenE2.set_trans(Tween.TRANS_SINE).set_ease(Tween.EASE_IN_OUT)
			tweenE2.tween_property(expresion_2, "modulate:a", 1, 0.2)
		3:
			if tweenE3 != null && tweenE3.is_valid():
				tweenE3.kill()
			expresion_3.modulate.a = 0
			expresion_3.texture = preload("res://sprites/expresiones/Molestia.png")
			tweenE3 = create_tween()
			tweenE3.set_trans(Tween.TRANS_SINE).set_ease(Tween.EASE_IN_OUT)
			tweenE3.tween_property(expresion_3, "modulate:a", 1, 0.2)
		4:
			if tweenE4 != null && tweenE4.is_valid():
				tweenE4.kill()
			expresion_4.modulate.a = 0
			expresion_4.texture = preload("res://sprites/expresiones/Molestia.png")
			tweenE4 = create_tween()
			tweenE4.set_trans(Tween.TRANS_SINE).set_ease(Tween.EASE_IN_OUT)
			tweenE4.tween_property(expresion_4, "modulate:a", 1, 0.2)
		5:
			if tweenE5 != null && tweenE5.is_valid():
				tweenE5.kill()
			expresion_5.modulate.a = 0
			expresion_5.texture = preload("res://sprites/expresiones/Molestia.png")
			tweenE5 = create_tween()
			tweenE5.set_trans(Tween.TRANS_SINE).set_ease(Tween.EASE_IN_OUT)
			tweenE5.tween_property(expresion_5, "modulate:a", 1, 0.2)
		6:
			if tweenE6 != null && tweenE6.is_valid():
				tweenE6.kill()
			expresion_6.modulate.a = 0
			expresion_6.texture = preload("res://sprites/expresiones/Molestia.png")
			tweenE6 = create_tween()
			tweenE6.set_trans(Tween.TRANS_SINE).set_ease(Tween.EASE_IN_OUT)
			tweenE6.tween_property(expresion_6, "modulate:a", 1, 0.2)
		7:
			if tweenE7 != null && tweenE7.is_valid():
				tweenE7.kill()
			expresion_7.modulate.a = 0
			expresion_7.texture = preload("res://sprites/expresiones/Molestia.png")
			tweenE7 = create_tween()
			tweenE7.set_trans(Tween.TRANS_SINE).set_ease(Tween.EASE_IN_OUT)
			tweenE7.tween_property(expresion_7, "modulate:a", 1, 0.2)

func sorpresa():
	var x = randi_range(1, 7)
	match x:
		1:
			if tweenE1 != null && tweenE1.is_valid():
				tweenE1.kill()
			expresion_1.modulate.a = 0
			expresion_1.texture = preload("res://sprites/expresiones/sorpresa.png")
			tweenE1 = create_tween()
			tweenE1.set_trans(Tween.TRANS_SINE).set_ease(Tween.EASE_IN_OUT)
			tweenE1.tween_property(expresion_1, "modulate:a", 1, 0.1)
		2:
			if tweenE2 != null && tweenE2.is_valid():
				tweenE2.kill()
			expresion_2.modulate.a = 0
			expresion_2.texture = preload("res://sprites/expresiones/sorpresa.png")
			tweenE2 = create_tween()
			tweenE2.set_trans(Tween.TRANS_SINE).set_ease(Tween.EASE_IN_OUT)
			tweenE2.tween_property(expresion_2, "modulate:a", 1, 0.1)
		3:
			if tweenE3 != null && tweenE3.is_valid():
				tweenE3.kill()
			expresion_3.modulate.a = 0
			expresion_3.texture = preload("res://sprites/expresiones/sorpresa.png")
			tweenE3 = create_tween()
			tweenE3.set_trans(Tween.TRANS_SINE).set_ease(Tween.EASE_IN_OUT)
			tweenE3.tween_property(expresion_3, "modulate:a", 1, 0.1)
		4:
			if tweenE4 != null && tweenE4.is_valid():
				tweenE4.kill()
			expresion_4.modulate.a = 0
			expresion_4.texture = preload("res://sprites/expresiones/sorpresa.png")
			tweenE4 = create_tween()
			tweenE4.set_trans(Tween.TRANS_SINE).set_ease(Tween.EASE_IN_OUT)
			tweenE4.tween_property(expresion_4, "modulate:a", 1, 0.1)
		5:
			if tweenE5 != null && tweenE5.is_valid():
				tweenE5.kill()
			expresion_5.modulate.a = 0
			expresion_5.texture = preload("res://sprites/expresiones/sorpresa.png")
			tweenE5 = create_tween()
			tweenE5.set_trans(Tween.TRANS_SINE).set_ease(Tween.EASE_IN_OUT)
			tweenE5.tween_property(expresion_5, "modulate:a", 1, 0.1)
		6:
			if tweenE6 != null && tweenE6.is_valid():
				tweenE6.kill()
			expresion_6.modulate.a = 0
			expresion_6.texture = preload("res://sprites/expresiones/sorpresa.png")
			tweenE6 = create_tween()
			tweenE6.set_trans(Tween.TRANS_SINE).set_ease(Tween.EASE_IN_OUT)
			tweenE6.tween_property(expresion_6, "modulate:a", 1, 0.1)
		7:
			if tweenE7 != null && tweenE7.is_valid():
				tweenE7.kill()
			expresion_7.modulate.a = 0
			expresion_7.texture = preload("res://sprites/expresiones/sorpresa.png")
			tweenE7 = create_tween()
			tweenE7.set_trans(Tween.TRANS_SINE).set_ease(Tween.EASE_IN_OUT)
			tweenE7.tween_property(expresion_7, "modulate:a", 1, 0.1)

func pregunta():
	var x = randi_range(1, 7)
	match x:
		1:
			if tweenE1 != null && tweenE1.is_valid():
				tweenE1.kill()
			expresion_1.modulate.a = 0
			expresion_1.texture = preload("res://sprites/expresiones/pregunta.png")
			tweenE1 = create_tween()
			tweenE1.set_trans(Tween.TRANS_SINE).set_ease(Tween.EASE_IN_OUT)
			tweenE1.tween_property(expresion_1, "modulate:a", 1, 0.2)
		2:
			if tweenE2 != null && tweenE2.is_valid():
				tweenE2.kill()
			expresion_2.modulate.a = 0
			expresion_2.texture = preload("res://sprites/expresiones/pregunta.png")
			tweenE2 = create_tween()
			tweenE2.set_trans(Tween.TRANS_SINE).set_ease(Tween.EASE_IN_OUT)
			tweenE2.tween_property(expresion_2, "modulate:a", 1, 0.2)
		3:
			if tweenE3 != null && tweenE3.is_valid():
				tweenE3.kill()
			expresion_3.modulate.a = 0
			expresion_3.texture = preload("res://sprites/expresiones/pregunta.png")
			tweenE3 = create_tween()
			tweenE3.set_trans(Tween.TRANS_SINE).set_ease(Tween.EASE_IN_OUT)
			tweenE3.tween_property(expresion_3, "modulate:a", 1, 0.2)
		4:
			if tweenE4 != null && tweenE4.is_valid():
				tweenE4.kill()
			expresion_4.modulate.a = 0
			expresion_4.texture = preload("res://sprites/expresiones/pregunta.png")
			tweenE4 = create_tween()
			tweenE4.set_trans(Tween.TRANS_SINE).set_ease(Tween.EASE_IN_OUT)
			tweenE4.tween_property(expresion_4, "modulate:a", 1, 0.2)
		5:
			if tweenE5 != null && tweenE5.is_valid():
				tweenE5.kill()
			expresion_5.modulate.a = 0
			expresion_5.texture = preload("res://sprites/expresiones/pregunta.png")
			tweenE5 = create_tween()
			tweenE5.set_trans(Tween.TRANS_SINE).set_ease(Tween.EASE_IN_OUT)
			tweenE5.tween_property(expresion_5, "modulate:a", 1, 0.2)
		6:
			if tweenE6 != null && tweenE6.is_valid():
				tweenE6.kill()
			expresion_6.modulate.a = 0
			expresion_6.texture = preload("res://sprites/expresiones/pregunta.png")
			tweenE6 = create_tween()
			tweenE6.set_trans(Tween.TRANS_SINE).set_ease(Tween.EASE_IN_OUT)
			tweenE6.tween_property(expresion_6, "modulate:a", 1, 0.2)
		7:
			if tweenE7 != null && tweenE7.is_valid():
				tweenE7.kill()
			expresion_7.modulate.a = 0
			expresion_7.texture = preload("res://sprites/expresiones/pregunta.png")
			tweenE7 = create_tween()
			tweenE7.set_trans(Tween.TRANS_SINE).set_ease(Tween.EASE_IN_OUT)
			tweenE7.tween_property(expresion_7, "modulate:a", 1, 0.2)

func impresion():
	var x = randi_range(1, 7)
	match x:
		1:
			if tweenE1 != null && tweenE1.is_valid():
				tweenE1.kill()
			expresion_1.modulate.a = 0
			expresion_1.texture = preload("res://sprites/expresiones/impresion.png")
			tweenE1 = create_tween()
			tweenE1.set_trans(Tween.TRANS_SINE).set_ease(Tween.EASE_IN_OUT)
			tweenE1.tween_property(expresion_1, "modulate:a", 1, 0.1)
		2:
			if tweenE2 != null && tweenE2.is_valid():
				tweenE2.kill()
			expresion_2.modulate.a = 0
			expresion_2.texture = preload("res://sprites/expresiones/impresion.png")
			tweenE2 = create_tween()
			tweenE2.set_trans(Tween.TRANS_SINE).set_ease(Tween.EASE_IN_OUT)
			tweenE2.tween_property(expresion_2, "modulate:a", 1, 0.1)
		3:
			if tweenE3 != null && tweenE3.is_valid():
				tweenE3.kill()
			expresion_3.modulate.a = 0
			expresion_3.texture = preload("res://sprites/expresiones/impresion.png")
			tweenE3 = create_tween()
			tweenE3.set_trans(Tween.TRANS_SINE).set_ease(Tween.EASE_IN_OUT)
			tweenE3.tween_property(expresion_3, "modulate:a", 1, 0.1)
		4:
			if tweenE4 != null && tweenE4.is_valid():
				tweenE4.kill()
			expresion_4.modulate.a = 0
			expresion_4.texture = preload("res://sprites/expresiones/impresion.png")
			tweenE4 = create_tween()
			tweenE4.set_trans(Tween.TRANS_SINE).set_ease(Tween.EASE_IN_OUT)
			tweenE4.tween_property(expresion_4, "modulate:a", 1, 0.1)
		5:
			if tweenE5 != null && tweenE5.is_valid():
				tweenE5.kill()
			expresion_5.modulate.a = 0
			expresion_5.texture = preload("res://sprites/expresiones/impresion.png")
			tweenE5 = create_tween()
			tweenE5.set_trans(Tween.TRANS_SINE).set_ease(Tween.EASE_IN_OUT)
			tweenE5.tween_property(expresion_5, "modulate:a", 1, 0.1)
		6:
			if tweenE6 != null && tweenE6.is_valid():
				tweenE6.kill()
			expresion_6.modulate.a = 0
			expresion_6.texture = preload("res://sprites/expresiones/impresion.png")
			tweenE6 = create_tween()
			tweenE6.set_trans(Tween.TRANS_SINE).set_ease(Tween.EASE_IN_OUT)
			tweenE6.tween_property(expresion_6, "modulate:a", 1, 0.1)
		7:
			if tweenE7 != null && tweenE7.is_valid():
				tweenE7.kill()
			expresion_7.modulate.a = 0
			expresion_7.texture = preload("res://sprites/expresiones/impresion.png")
			tweenE7 = create_tween()
			tweenE7.set_trans(Tween.TRANS_SINE).set_ease(Tween.EASE_IN_OUT)
			tweenE7.tween_property(expresion_7, "modulate:a", 1, 0.1)

func idea():
	var x = randi_range(1, 7)
	match x:
		1:
			if tweenE1 != null && tweenE1.is_valid():
				tweenE1.kill()
			expresion_1.modulate.a = 0
			expresion_1.texture = preload("res://sprites/expresiones/idea.png")
			tweenE1 = create_tween()
			tweenE1.set_trans(Tween.TRANS_SINE).set_ease(Tween.EASE_IN_OUT)
			tweenE1.tween_property(expresion_1, "modulate:a", 1, 0.1)
		2:
			if tweenE2 != null && tweenE2.is_valid():
				tweenE2.kill()
			expresion_2.modulate.a = 0
			expresion_2.texture = preload("res://sprites/expresiones/idea.png")
			tweenE2 = create_tween()
			tweenE2.set_trans(Tween.TRANS_SINE).set_ease(Tween.EASE_IN_OUT)
			tweenE2.tween_property(expresion_2, "modulate:a", 1, 0.1)
		3:
			if tweenE3 != null && tweenE3.is_valid():
				tweenE3.kill()
			expresion_3.modulate.a = 0
			expresion_3.texture = preload("res://sprites/expresiones/idea.png")
			tweenE3 = create_tween()
			tweenE3.set_trans(Tween.TRANS_SINE).set_ease(Tween.EASE_IN_OUT)
			tweenE3.tween_property(expresion_3, "modulate:a", 1, 0.1)
		4:
			if tweenE4 != null && tweenE4.is_valid():
				tweenE4.kill()
			expresion_4.modulate.a = 0
			expresion_4.texture = preload("res://sprites/expresiones/idea.png")
			tweenE4 = create_tween()
			tweenE4.set_trans(Tween.TRANS_SINE).set_ease(Tween.EASE_IN_OUT)
			tweenE4.tween_property(expresion_4, "modulate:a", 1, 0.1)
		5:
			if tweenE5 != null && tweenE5.is_valid():
				tweenE5.kill()
			expresion_5.modulate.a = 0
			expresion_5.texture = preload("res://sprites/expresiones/idea.png")
			tweenE5 = create_tween()
			tweenE5.set_trans(Tween.TRANS_SINE).set_ease(Tween.EASE_IN_OUT)
			tweenE5.tween_property(expresion_5, "modulate:a", 1, 0.1)
		6:
			if tweenE6 != null && tweenE6.is_valid():
				tweenE6.kill()
			expresion_6.modulate.a = 0
			expresion_6.texture = preload("res://sprites/expresiones/idea.png")
			tweenE6 = create_tween()
			tweenE6.set_trans(Tween.TRANS_SINE).set_ease(Tween.EASE_IN_OUT)
			tweenE6.tween_property(expresion_6, "modulate:a", 1, 0.1)
		7:
			if tweenE7 != null && tweenE7.is_valid():
				tweenE7.kill()
			expresion_7.modulate.a = 0
			expresion_7.texture = preload("res://sprites/expresiones/idea.png")
			tweenE7 = create_tween()
			tweenE7.set_trans(Tween.TRANS_SINE).set_ease(Tween.EASE_IN_OUT)
			tweenE7.tween_property(expresion_7, "modulate:a", 1, 0.1)

func sonrojo():
	var x = randi_range(1, 7)
	match x:
		1:
			if tweenE1 != null && tweenE1.is_valid():
				tweenE1.kill()
			expresion_1.modulate.a = 0
			expresion_1.texture = preload("res://sprites/expresiones/sonrojo.png")
			tweenE1 = create_tween()
			tweenE1.set_trans(Tween.TRANS_SINE).set_ease(Tween.EASE_IN_OUT)
			tweenE1.tween_property(expresion_1, "modulate:a", 1, 0.3)
		2:
			if tweenE2 != null && tweenE2.is_valid():
				tweenE2.kill()
			expresion_2.modulate.a = 0
			expresion_2.texture = preload("res://sprites/expresiones/sonrojo.png")
			tweenE2 = create_tween()
			tweenE2.set_trans(Tween.TRANS_SINE).set_ease(Tween.EASE_IN_OUT)
			tweenE2.tween_property(expresion_2, "modulate:a", 1, 0.3)
		3:
			if tweenE3 != null && tweenE3.is_valid():
				tweenE3.kill()
			expresion_3.modulate.a = 0
			expresion_3.texture = preload("res://sprites/expresiones/sonrojo.png")
			tweenE3 = create_tween()
			tweenE3.set_trans(Tween.TRANS_SINE).set_ease(Tween.EASE_IN_OUT)
			tweenE3.tween_property(expresion_3, "modulate:a", 1, 0.3)
		4:
			if tweenE4 != null && tweenE4.is_valid():
				tweenE4.kill()
			expresion_4.modulate.a = 0
			expresion_4.texture = preload("res://sprites/expresiones/sonrojo.png")
			tweenE4 = create_tween()
			tweenE4.set_trans(Tween.TRANS_SINE).set_ease(Tween.EASE_IN_OUT)
			tweenE4.tween_property(expresion_4, "modulate:a", 1, 0.3)
		5:
			if tweenE5 != null && tweenE5.is_valid():
				tweenE5.kill()
			expresion_5.modulate.a = 0
			expresion_5.texture = preload("res://sprites/expresiones/sonrojo.png")
			tweenE5 = create_tween()
			tweenE5.set_trans(Tween.TRANS_SINE).set_ease(Tween.EASE_IN_OUT)
			tweenE5.tween_property(expresion_5, "modulate:a", 1, 0.3)
		6:
			if tweenE6 != null && tweenE6.is_valid():
				tweenE6.kill()
			expresion_6.modulate.a = 0
			expresion_6.texture = preload("res://sprites/expresiones/sonrojo.png")
			tweenE6 = create_tween()
			tweenE6.set_trans(Tween.TRANS_SINE).set_ease(Tween.EASE_IN_OUT)
			tweenE6.tween_property(expresion_6, "modulate:a", 1, 0.3)
		7:
			if tweenE7 != null && tweenE7.is_valid():
				tweenE7.kill()
			expresion_7.modulate.a = 0
			expresion_7.texture = preload("res://sprites/expresiones/sonrojo.png")
			tweenE7 = create_tween()
			tweenE7.set_trans(Tween.TRANS_SINE).set_ease(Tween.EASE_IN_OUT)
			tweenE7.tween_property(expresion_7, "modulate:a", 1, 0.3)

func nada():
	var lala1: bool = false
	var lala2: bool = false
	var lala3: bool = false
	var lala4: bool = false
	var lala5: bool = false
	var lala6: bool = false
	var lala7: bool = false
	if tweenE1 != null && tweenE1.is_valid():
		tweenE1.kill()
		lala1 = true
	if tweenE2 != null && tweenE2.is_valid():
		tweenE2.kill()
		lala2 = true
	if tweenE3 != null && tweenE3.is_valid():
		tweenE3.kill()
		lala3 = true
	if tweenE4 != null && tweenE4.is_valid():
		tweenE4.kill()
		lala4 = true
	if tweenE5 != null && tweenE5.is_valid():
		tweenE5.kill()
		lala5 = true
	if tweenE6 != null && tweenE6.is_valid():
		tweenE6.kill()
		lala6 = true
	if tweenE7 != null && tweenE7.is_valid():
		tweenE7.kill()
		lala7 = true
	tweenE1 = create_tween()
	tweenE2 = create_tween()
	tweenE3 = create_tween()
	tweenE4 = create_tween()
	tweenE5 = create_tween()
	tweenE6 = create_tween()
	tweenE7 = create_tween()
	tweenE1.set_trans(Tween.TRANS_SINE).set_ease(Tween.EASE_IN_OUT)
	tweenE2.set_trans(Tween.TRANS_SINE).set_ease(Tween.EASE_IN_OUT)
	tweenE3.set_trans(Tween.TRANS_SINE).set_ease(Tween.EASE_IN_OUT)
	tweenE4.set_trans(Tween.TRANS_SINE).set_ease(Tween.EASE_IN_OUT)
	tweenE5.set_trans(Tween.TRANS_SINE).set_ease(Tween.EASE_IN_OUT)
	tweenE6.set_trans(Tween.TRANS_SINE).set_ease(Tween.EASE_IN_OUT)
	tweenE7.set_trans(Tween.TRANS_SINE).set_ease(Tween.EASE_IN_OUT)
	tweenE1.tween_property(expresion_1, "modulate:a", 0, 0.25)
	tweenE2.tween_property(expresion_2, "modulate:a", 0, 0.25)
	tweenE3.tween_property(expresion_3, "modulate:a", 0, 0.25)
	tweenE4.tween_property(expresion_4, "modulate:a", 0, 0.25)
	tweenE5.tween_property(expresion_2, "modulate:a", 0, 0.25)
	tweenE6.tween_property(expresion_3, "modulate:a", 0, 0.25)
	tweenE7.tween_property(expresion_4, "modulate:a", 0, 0.25)
	await tweenE7.finished
	if !lala1:
		expresion_1.texture = preload("res://sprites/expresiones/Nada.png")
	if !lala2:
		expresion_2.texture = preload("res://sprites/expresiones/Nada.png")
	if !lala3:
		expresion_3.texture = preload("res://sprites/expresiones/Nada.png")
	if !lala4:
		expresion_4.texture = preload("res://sprites/expresiones/Nada.png")
	if !lala5:
		expresion_5.texture = preload("res://sprites/expresiones/Nada.png")
	if !lala6:
		expresion_6.texture = preload("res://sprites/expresiones/Nada.png")
	if !lala7:
		expresion_7.texture = preload("res://sprites/expresiones/Nada.png")
