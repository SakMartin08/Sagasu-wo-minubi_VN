extends CanvasLayer

@onready var dialogue_box: Control = $DialogueBox
@onready var dialogue_text: Label = $DialogueBox/DialogueText
@onready var opciones: PanelContainer = $"Choices Dialog"

var dialogos: Array = []
var linea_actual: int = 0
var esta_activo: bool = false
var ultimo_dialogo: String = ""
signal dialogo_terminado

func _ready() -> void:
	dialogue_box.visible = false
	opciones.visible = false

func hablar(lineas: Array, nombre: String = "#%&$?"):
	dialogos = lineas
	for x in range(dialogos.size()):
		dialogos[x] = nombre + "\n" + dialogos[x]
	
	linea_actual = 0
	esta_activo = true
	dialogue_box.visible = true
	dialogue_text.text = dialogos[linea_actual]
	ultimo_dialogo = dialogos[linea_actual]
	
	await dialogo_terminado



func _input(event):
	if !esta_activo:
		return
	if event.is_action_pressed("ui_accept"):
		avanzar()
func avanzar():
	if linea_actual < dialogos.size() -1:
		linea_actual += 1
		dialogue_text.text = dialogos[linea_actual]
		ultimo_dialogo = dialogos[linea_actual]
	else:
		esta_activo = false
		dialogue_box.visible = false
		dialogo_terminado.emit()

func mostrarOp(options: Array, textito:String=ultimo_dialogo):
	dialogue_box.visible = true
	dialogue_text.text = textito
	
	opciones.choices = options
	opciones.visible = true
	
	var seleccion = await opciones.SELECTED
	
	dialogue_box.visible = false
	
	return seleccion
