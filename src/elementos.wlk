class Barrio {
	const elementos = []
	var property produccion
	
	method agregar(elem) {
		elementos.add(elem)
	}
	method sacar(elem) {
		elementos.remove(elem)
	}
	method esCopado() {
		return elementos.count ({elem => elem.esBueno()}) > (elementos.size() / 2)
	}
}

class Hogar inherits Barrio {
	var property mugre
	var property confort
	
	method esBueno() {
		return mugre <= confort / 2
	}
}

class Huerta inherits Barrio {
	var property capacidad
	
	method esBueno() {
		return capacidad > produccion
	}
}

class Mascota inherits Barrio {
	var property salud
	
	method esBueno() {
		return salud >= 250
	}
}
