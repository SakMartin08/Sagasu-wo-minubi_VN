extends Control


func wait(segundos: float = 1):
	await get_tree().create_timer(segundos).timeout
