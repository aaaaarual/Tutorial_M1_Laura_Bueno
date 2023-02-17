extends Node2D

var lista
var clique
var vazio
var ok
var ok2
var texto
var final
var valor
var delete
var zerar

func _on_lista_pressed():
	clique = "comida, dinheiro e vinho"
	$clique.text = String(clique)
	
func _on_ok_pressed():
	if zerar: 
		$RichTextLabel.text = ""
		$RichTextLabel.text += $vazio.text
		$vazio.text = ""
		zerar = false
	
	$RichTextLabel.text += "\n" + $vazio.text
	$vazio.text = ""
	#\n = enter
	#o += soma a própria variável mais o "acumúlo"
	
func _on_ok2_pressed():
	texto = "Bom dia, como está? Espero que bem."
	$texto.text = String(texto)
	
func _on_final_pressed():
	$RichTextLabel.text = $valor.text
	$valor.text = ""
	zerar = true
