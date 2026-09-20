extends Node2D

@onready var sprite_2d: Sprite2D = $Mina
@onready var expresion_1: Sprite2D = $Mina/Expresion1
@onready var expresion_2: Sprite2D = $Mina/Expresion2
@onready var expresion_3: Sprite2D = $Mina/Expresion3
@onready var expresion_4: Sprite2D = $Mina/Expresion4


var tween : Tween
var tweenE1 : Tween
var tweenE2 : Tween
var tweenE3 : Tween
var tweenE4 : Tween

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
	tweenE1.tween_property(expresion_1, "modulate:a", 1, 0.1)

func bajon():
	if tweenE1 != null && tweenE1.is_valid():
		tweenE1.kill()
	expresion_1.modulate.a = 0
	expresion_1.texture = preload("res://sprites/expresiones/Bajon.png")
	tweenE1 = create_tween()
	tweenE1.set_trans(Tween.TRANS_SINE).set_ease(Tween.EASE_IN_OUT)
	tweenE1.tween_property(expresion_1, "modulate:a", 1, 0.35)

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

func estrez():
	if tweenE1 != null && tweenE1.is_valid():
		tweenE1.kill()
	expresion_1.modulate.a = 0
	expresion_1.texture = preload("res://sprites/expresiones/Molestia.png")
	tweenE1 = create_tween()
	tweenE1.set_trans(Tween.TRANS_SINE).set_ease(Tween.EASE_IN_OUT)
	tweenE1.tween_property(expresion_1, "modulate:a", 1, 0.2)

func sorpresa():
	if tweenE2 != null && tweenE2.is_valid():
		tweenE2.kill()
	expresion_2.modulate.a = 0
	expresion_2.texture = preload("res://sprites/expresiones/sorpresa.png")
	tweenE2 = create_tween()
	tweenE2.set_trans(Tween.TRANS_SINE).set_ease(Tween.EASE_IN_OUT)
	tweenE2.tween_property(expresion_2, "modulate:a", 1, 0.1)

func pregunta():
	if tweenE2 != null && tweenE2.is_valid():
		tweenE2.kill()
	expresion_2.modulate.a = 0
	expresion_2.texture = preload("res://sprites/expresiones/pregunta.png")
	tweenE2 = create_tween()
	tweenE2.set_trans(Tween.TRANS_SINE).set_ease(Tween.EASE_IN_OUT)
	tweenE2.tween_property(expresion_2, "modulate:a", 1, 0.2)

func impresion():
	if tweenE3 != null && tweenE3.is_valid():
		tweenE3.kill()
	expresion_3.modulate.a = 0
	expresion_3.texture = preload("res://sprites/expresiones/impresion.png")
	tweenE3 = create_tween()
	tweenE3.set_trans(Tween.TRANS_SINE).set_ease(Tween.EASE_IN_OUT)
	tweenE3.tween_property(expresion_3, "modulate:a", 1, 0.1)

func idea():
	if tweenE3 != null && tweenE3.is_valid():
		tweenE3.kill()
	expresion_3.modulate.a = 0
	expresion_3.texture = preload("res://sprites/expresiones/idea.png")
	tweenE3 = create_tween()
	tweenE3.set_trans(Tween.TRANS_SINE).set_ease(Tween.EASE_IN_OUT)
	tweenE3.tween_property(expresion_3, "modulate:a", 1, 0.1)

func sonrojo():
	if tweenE4 != null && tweenE4.is_valid():
		tweenE4.kill()
	expresion_4.modulate.a = 0
	expresion_4.texture = preload("res://sprites/expresiones/sonrojo.png")
	tweenE4 = create_tween()
	tweenE4.set_trans(Tween.TRANS_SINE).set_ease(Tween.EASE_IN_OUT)
	tweenE4.tween_property(expresion_4, "modulate:a", 1, 0.3)

func nada():
	if tweenE1 != null && tweenE1.is_valid():
		tweenE1.kill()
	if tweenE2 != null && tweenE2.is_valid():
		tweenE2.kill()
	if tweenE3 != null && tweenE3.is_valid():
		tweenE3.kill()
	if tweenE4 != null && tweenE4.is_valid():
		tweenE4.kill()
	tweenE1 = create_tween()
	tweenE2 = create_tween()
	tweenE3 = create_tween()
	tweenE4 = create_tween()
	tweenE1.set_trans(Tween.TRANS_SINE).set_ease(Tween.EASE_IN_OUT)
	tweenE2.set_trans(Tween.TRANS_SINE).set_ease(Tween.EASE_IN_OUT)
	tweenE3.set_trans(Tween.TRANS_SINE).set_ease(Tween.EASE_IN_OUT)
	tweenE4.set_trans(Tween.TRANS_SINE).set_ease(Tween.EASE_IN_OUT)
	tweenE1.tween_property(expresion_1, "modulate:a", 0, 0.25)
	tweenE2.tween_property(expresion_2, "modulate:a", 0, 0.25)
	tweenE3.tween_property(expresion_3, "modulate:a", 0, 0.25)
	tweenE4.tween_property(expresion_4, "modulate:a", 0, 0.25)
	await tweenE4.finished
	expresion_1.texture = preload("res://sprites/expresiones/Nada.png")
	expresion_2.texture = preload("res://sprites/expresiones/Nada.png")
	expresion_3.texture = preload("res://sprites/expresiones/Nada.png")
	expresion_4.texture = preload("res://sprites/expresiones/Nada.png")
