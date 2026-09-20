extends Node

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var op: int = 1
	while op != 0:
		$personaje.snap(%center)
		op = await $dialogo.mostrarOp(["salir", "enojate", "estresate", "avergüensate", "ponete feliz", "ponete bajon", "iniciar prueba", "movete", "ponete sonrojada", "hace una pregunta", "sorprendete", "pensa en una idea", "impresionate", "dejame admirarte"], "elije una opcion")
		match op:
			0:
				await $dialogo.hablar(["chau"], "ButterFly")
				$personaje.move(%off_right)
			1:
				await enojate()
			2:
				await estresate()
			3:
				await averguensate()
			4:
				await poneteFeliz()
			5:
				await poneteBajon()
			6:
				await pruebita()
			7:
				await movete()
			8:
				await poneteSonrojada()
			9:
				await hacePregunta()
			10:
				await sorprendete()
			11:
				await pensaIdea()
			12:
				await impresionate()
			13:
				await $escenario.wait(10)

func enojate():
	$personaje.enojado()
	await $dialogo.hablar(["GRRR"], "ButterFly")
	$personaje.nada()
func estresate():
	$personaje.estrez()
	await $dialogo.hablar(["Dejame sola..."], "ButterFly")
	$personaje.nada()
func averguensate():
	$personaje.verguenza()
	await $dialogo.hablar(["Perdon..."], "ButterFly")
	$personaje.nada()
func poneteFeliz():
	$personaje.radiante()
	await $dialogo.hablar(["Me aceptaron en la escuela de arte!"], "ButterFly")
	$personaje.nada()
func poneteBajon():
	$personaje.bajon()
	await $dialogo.hablar(["Me rechazaron en la escuela de arte..."], "ButterFly")
	$personaje.nada()
func poneteSonrojada():
	$personaje.sonrojo()
	await $dialogo.hablar(["Que galan que sos"], "ButterFly")
	$personaje.nada()
func hacePregunta():
	$personaje.pregunta()
	await $dialogo.hablar(["¿Las matematicas fueron inventadas o descubiertas?"], "ButterFly")
	$personaje.nada()
func sorprendete():
	$personaje.sorpresa()
	await $dialogo.hablar(["Wow!"], "ButterFly")
	$personaje.nada()
func pensaIdea():
	$personaje.idea()
	await $dialogo.hablar(["Eureka!"], "ButterFly")
	$personaje.nada()
func impresionate():
	$personaje.impresion()
	await $dialogo.hablar(["Eso se ve horrible!"], "ButterFly")
	$personaje.nada()

func movete():
	await $personaje.move(%left_center)
	await $escenario.wait(0.1)
	await $personaje.move(%right)
	await $escenario.wait(0.2)
	await $personaje.move(%left, 0.5)
	await $escenario.wait(0.05)
	await $personaje.move(%peek_left, 2)
	await $escenario.wait(1.2)
	await $personaje.move(%off_right)
	$personaje.snap(%off_left)
	await $escenario.wait(0.1)
	await $personaje.move(%center, 0.6)
	await $escenario.wait(0.3)
	await $dialogo.hablar(["Ta-da!"], "ButterFly")

func pruebita():
	$personaje.snap(%off_left)
	await $escenario.wait(2)
	await $personaje.move(%center)
	await $escenario.wait(0.7)
	await $dialogo.hablar(["hola", "me llamo ButterFly"], "ButterFly")
	await $escenario.wait(3.4)
	$personaje.enojado()
	await $dialogo.hablar(["No vas a decir nada?"], "ButterFly")
	await $dialogo.hablar(["ButterFly esta enojada"])
	var opt = await $dialogo.mostrarOp(["puta de mierda", "perdon, me quede admirando tu belleza"])
	match opt:
		0:
			await $dialogo.hablar(["pendejo hijo de puta"], "ButterFly")
			$personaje.move(%off_left)
			await $dialogo.hablar(["como se te ocurre decirle eso a mi hija", "te voy a matar"])
			$personaje.nada()
		1:
			$personaje.nada()
			$personaje.sonrojo()
			await $dialogo.hablar(["hay, no digas esas cosas"], "ButterFly")
			await $dialogo.hablar(["ButterFly esta sonrojada", "Esta vez si se nota"])
			$personaje.nada()
