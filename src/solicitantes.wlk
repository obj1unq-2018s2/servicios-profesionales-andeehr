import profesionales.*
import universidades.*
import empresas.*

class Persona {
	var property provincia
	method puedeSerAtendidoPor(profesional) = profesional.provinciasDondePuedeTrabajar().contains(provincia)
}

class Institucion {
	const property universidades = []
	method agregar(universidad) {
		universidades.add(universidad)
	}
	method puedeSerAtendidoPor(profesional) = universidades.contains(profesional.universidad())
}