class Duenio {

	var mascotas = []
	var property valorPropio = 0
	var nivelDeDiversion = 0
	var property edad = 0
	var property entrenadores =[]

	method agregaMascota(mascota) {
		mascotas.add(mascota)
		mascota.duenio(self)
	}

	method esFeliz() {
		return (self.nivelDeAmor() + self.nivelDeDiversion()) >= (self.seguridad() * 2)
	}

	method darAmor(mascota) {
		mascota.recibeAfecto(valorPropio)
	}

	method nivelDeDiversion(cant) {
		nivelDeDiversion = cant
	}

	method nivelDeDiversion() {
		return nivelDeDiversion + mascotas.sum({ mascota => mascota.diversion() })
	}

	method nivelDeAmor() {
		return mascotas.sum({ mascota => mascota.darAmor() })
	}

	method seguridad() {
		return edad.min(50) + mascotas.sum({ mascota => mascota.seguridad() })
	}

	method seSienteSeguro() {
		return self.seguridad() > 50
	}

	method entrenar(mascota) {
		mascota.efectoAlEntrenar()
	}

	method puntosDeEntrenamiento() {
		return valorPropio
	}

	method mascotaEsBuena(mascota) {
		return mascota.valorTotal() > 150
	}
	
	method mascotasBuenas(){
		return mascotas.filter({mascota=>mascota.valorTotal()>150})
	}
     method entrenadoresRecomendables(){
     	return self.mascotasBuenas().map({mascota=>mascota.esEntrenadaPor()})
     }
	method entrenadorRecomendable() {
		return entrenadores.max({ entrenador => entrenador.puntosDeEntrenamiento() })
	}
    method entrenadores(entrenador){
    	entrenadores.add(entrenador)
    }
}

class Entrenador {

	var property exp

	method entrenar(mascota) {
		mascota.efectoAlEntrenar()
	}

	method puntosDeEntrenamiento() {
		return exp
	}

}

