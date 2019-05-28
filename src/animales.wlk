import wollok.game.*

class Vaca {
	var property position = game.at(3,5)
	const property image = "vaca.gif"
	var property tieneHambre = true
	var property peso = 200
	var property tieneSed = false
	
	method comer(kilos){ peso = peso + (kilos / 2) 
						tieneHambre = true  
	}
	method beber(){ tieneSed = false
					peso = peso -1
	}
	method hambre() { if(peso < 200){ tieneHambre = true} else { tieneHambre = false} }
	
}
class Gallina {
	var property position = game.at(3,5) 
	var vecesQueComio = 0
	var property tieneSed = false
	var property image = "gallina.gif"
	var property tieneHambre = true
	
	method peso(){ return 4}
	
	method comer(kilos){ vecesQueComio += 1 
		if(vecesQueComio % 2 == 0 or vecesQueComio % 5 == 0) {tieneSed = true} else {tieneSed = false}
	}
	method beber(){}
}
