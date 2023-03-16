extends Node2D

#var teste = false - Deletada
#var valor = 0 - Deletada
var numero = 0 #numero não pode ter acento
var lista = [] #lista tem que ser determinada como uma variável
var nome = "" #variável adicionada 
var baldo = nome+"baldo" #variável adicionada
var cont = 0 #variável adicionada 
var i = 0 #variável adicionada
#declarei mais variaveis

func _on_botao1_pressed():
	#Coletando dados inseridos pelo usuário
	numero = int($numero.text) #numero não pode ter acento
	nome =  str($nome.text) #ordem mudada e novo lineedit 


func _on_botao_2_pressed():
	#Incrementando o número inserido pelo usuário
	for i in range(10):
		numero += i #variável numero tem que estar em letra minuscula
		lista.append(numero) #variável numero tem que estar em letra minuscula
	$Label.text = String(lista) #exibindo a lista ao invés do numero 
	#apenas declarei a variavel i que estava faltando

func _on_botao3_pressed():
	#Mudando o nome do usuário de acordo com os dados da lista
	#Se houver algum número ímpar o nome deve adicionar "baldo" ao final
	var cont=0 #determinada aqui também
	for i in (lista): #alterei a condição while
		if(i%2==1):
			cont+=1
		if(cont!=0):
			baldo = nome+ " baldo"
			$Label2.text = baldo
