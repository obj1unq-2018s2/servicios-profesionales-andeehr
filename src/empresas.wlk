import profesionales.*
import universidades.*

class Empresa {
	const property profesionales = []
	const property clientes = []
	var property honorarioReferencia
	
	method contratar(profesional) {
		profesionales.add(profesional)
	}
	
	method despedir(profesional){
		profesionales.remove(profesional)
	}
	
	method profesionalesCaros() = profesionales.filter{profesional => profesional.honorariosPorHora() > honorarioReferencia }
	
	method universidadesFormadoras() = (profesionales.map{profesional => profesional.universidad()}).withoutDuplicates()
	
	method profesionalMasBarato() = profesionales.min{profesional => profesional.honorariosPorHora()}
	
	method estaCubierta(provincia) = profesionales.any{profesional => profesional.provinciasDondePuedeTrabajar().contains(provincia)}
	
	method cuantosEstudiaronEn(universidad) = profesionales.count{profesional => profesional.universidad() == universidad }
	


// ETAPA 3 SOLICITANTES

	method puedeSatisfacerA(solicitante) = profesionales.any {profesional => solicitante.puedeSerAtendidoPor(profesional)}

// ETAPA 4 TRABAJOS HECHOS

	method darServicio(solicitante) {
		if (self.puedeSatisfacerA(solicitante)) {
			var profesional = profesionales.find {profesional => solicitante.puedeSerAtendidoPor(profesional)}
			profesional.cobrar(profesional.honorariosPorHora())
			clientes.add(solicitante)
		} else {
			self.error("No puede ser atendido en este momento")
		}
	}
	method cuantosClientesTiene() = clientes.size()
	method tieneComoClienteA(alguien) = clientes.contains(alguien)
}