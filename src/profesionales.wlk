import universidades.*

// esta clase está completa, no necesita nada más
class ProfesionalAsociado {
	var universidad
	method universidad() {
		return universidad
	}
	method universidad(univ) {
		universidad = univ
	}
	method provinciasDondePuedeTrabajar() {
		return [ "Entre Ríos", "Corrientes", "Santa Fe" ]
	}
	method honorariosPorHora() {
		return 3000
	}
	method cobrar(dinero) {
		asociacionDeProfesionalesdelLitoral.recibirDonacion(dinero)
	}

}

// a esta clase le faltan métodos
class ProfesionalVinculado {
	var universidad
	method universidad() {
		return universidad
	}
	method universidad(univ) {
		universidad = univ
	}
	method provinciasDondePuedeTrabajar() = [universidad.provincia()]
	method honorariosPorHora() = universidad.honorariosPorHora()
	
	method cobrar(dinero) {
		universidad.recibirDonacion(dinero / 2)
	}

}

// a esta clase le faltan atributos y métodos
class ProfesionalLibre {
	var universidad
	var property provinciasDondePuedeTrabajar
	var property honorariosPorHora
	var property dinero = 0
	
	method universidad() {
		return universidad
	}

	method universidad(univ) {
		universidad = univ
	}
	method cobrar(cuanto) {
		dinero += cuanto
	}
	method pasarDinero(profesional, cuanto) {
		dinero -= cuanto
		profesional.recibirDinero(cuanto)
	}
	method recibirDinero(cuanto) {
		dinero += cuanto
	}
}

