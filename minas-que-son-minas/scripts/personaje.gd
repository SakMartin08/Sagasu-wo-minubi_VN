extends Node2D

@onready var sprite_2d: Sprite2D = $Sprite2D
@onready var expresion_1: Sprite2D = $Mina/Expresion1


var tween : Tween
var tweenE1 : Tween

func _ready() -> void:
	nada()

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
	if tweenE1 != null && tweenE1.is_valid():
		tweenE1.kill()
	expresion_1.modulate.a = 0
	expresion_1.texture = preload("res://sprites/expresiones/ESTOY ENOJADOOOO AAAAH.png")
	tweenE1 = create_tween()
	tweenE1.set_trans(Tween.TRANS_SINE).set_ease(Tween.EASE_IN_OUT)
	tweenE1.tween_property(expresion_1, "modulate:a", 1, 0.2)

func bajon():
	if tweenE1 != null && tweenE1.is_valid():
		tweenE1.kill()
	expresion_1.modulate.a = 0
	expresion_1.texture = preload("res://sprites/expresiones/Bajon.png")
	tweenE1 = create_tween()
	tweenE1.set_trans(Tween.TRANS_SINE).set_ease(Tween.EASE_IN_OUT)
	tweenE1.tween_property(expresion_1, "modulate:a", 1, 0.2)

func verguenza():
	if tweenE1 != null && tweenE1.is_valid():
		tweenE1.kill()
	expresion_1.modulate.a = 0
	expresion_1.texture = preload("res://sprites/expresiones/Gota.png")
	tweenE1 = create_tween()
	tweenE1.set_trans(Tween.TRANS_SINE).set_ease(Tween.EASE_IN_OUT)
	tweenE1.tween_property(expresion_1, "modulate:a", 1, 0.2)

func radiante():
	if tweenE1 != null && tweenE1.is_valid():
		tweenE1.kill()
	expresion_1.modulate.a = 0
	expresion_1.texture = preload("res://sprites/expresiones/brillito.png")
	tweenE1 = create_tween()
	tweenE1.set_trans(Tween.TRANS_SINE).set_ease(Tween.EASE_IN_OUT)
	tweenE1.tween_property(expresion_1, "modulate:a", 1, 0.2)

func molesto():
	if tweenE1 != null && tweenE1.is_valid():
		tweenE1.kill()
	expresion_1.modulate.a = 0
	expresion_1.texture = preload("res://sprites/expresiones/Molestia.png")
	tweenE1 = create_tween()
	tweenE1.set_trans(Tween.TRANS_SINE).set_ease(Tween.EASE_IN_OUT)
	tweenE1.tween_property(expresion_1, "modulate:a", 1, 0.2)

func nada():
	if tweenE1 != null && tweenE1.is_valid():
		tweenE1.kill()
	tweenE1 = create_tween()
	tweenE1.set_trans(Tween.TRANS_SINE).set_ease(Tween.EASE_IN_OUT)
	tweenE1.tween_property(expresion_1, "modulate:a", 0, 0.2)
	await tweenE1.finished
	expresion_1.texture = preload("res://sprites/expresiones/Nada.png")
