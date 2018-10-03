import profesionales.*

class Universidad {
	var property provincia
	var property honorariosPorHora
	var property recaudado = 0
	method recibirDonacion(dinero) {
		recaudado += dinero
	}
}

object asociacionDeProfesionalesdelLitoral {
	var property recaudado = 0
	method recibirDonacion(dinero) {
		recaudado += dinero
	}
}