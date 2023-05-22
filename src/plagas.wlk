class Plagas {
	var property poblacion
	
	method enfermar() {
		return poblacion > 9
	}
}

class Cucarachas inherits Plagas {
	var property peso
	
	method nivelDanio() {
		return poblacion / 2
	}
	override method enfermar() {
		return poblacion > 9 and peso > 10 
	} 
}

class Pulgas inherits Plagas {
	method nivelDanio() {
		return poblacion * 2
	}
}

class Garrapatas inherits Plagas {
	method nivelDanio() {
		return poblacion * 2
	}
}

class Mosquitos inherits Plagas {
	method nivelDanio() {
		return poblacion
	}
	override method enfermar() {
		return poblacion > 9 and poblacion % 3 == 0
	}
}