object pepita {
	var energia = 100
	
	method comer(comida) {
		energia = energia + comida.energiaQueAporta()
	}
	
	method volar(distancia) {
		energia = energia - 10 - distancia
	}
	
	method energia() {
		return energia
	}
}

object pepon {
    var energia = 30
    
	method comer(comida) {
  	    energia = energia + (comida.energiaQueAporta() / 2)
    }

    method volar(distancia) {
        energia = energia - 20 - (distancia * 2)
    }

	method energia() {
		return energia
	}
}

object alpiste {
	method energiaQueAporta() {
		return 20
	}
}

object manzana {
	var madurez = 1
	const base = 5
	
	method madurez() {
		return madurez
	}
	
	method madurez(_madurez) {
		madurez = _madurez
	}
	
	method madurar() {
		self.madurez(madurez + 1)
	}
	
	method energiaQueAporta() {
		return base * madurez
	}
	
}

object roque {
    var entrenando = pepita
    var cenas = 0

    method entrenar(ave) {
        entrenando = ave
        cenas = 0
    }

    method alimentar(comida) {
        entrenando.comer(comida)
        cenas = cenas + 1
    }

    method cenas() {
        return cenas
    }
}
