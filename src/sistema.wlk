object sistema {

	var fanaticos = #{}

	method agregarFanatico(fan) {
		fanaticos.add(fan)
	}

	method fanaticoAgregaMascota(fan, mascota) {
		fan.agregaMascota(mascota)
	}

	method fanaticoEsFeliz(fan) {
		return fan.esFeliz()
	}

	method fanaticoDaAmor(fan, mascota) {
		fan.darAmor(mascota)
	}

	method nivelDeDiversionFan(fan) {
		return fan.nivelDeDiversion()
	}

	method nivelDeAmorFan(fan) {
		return fan.nivelDeAmor()
	}

	method seguridadFan(fan) {
		fan.seguridad()
	}

	method fanSeSienteSeguro(fan) {
		return fan.seSienteSeguro()
	}

	method mascotaEsEntrenadaPor(mascota, alguien) {
		mascota.esEntrenadaPor(alguien)
		mascota.duenio().entrenadores(alguien)
	}

	method entrenadorEntrena(entrenador, mascota) {
		if (entrenador == mascota.esEntrenadaPor()) {
			entrenador.entrenar(mascota)
		} else {
			self.error("No es el entrenador de la mascota")
		}
	}

	method consideraBuenaMascota(duenio, mascota) {
		return duenio.mascotaEsBuena(mascota)
	}

	method mascotasBuenas(duenio) {
		return duenio.mascotasBuenas()
	}

	method entrenadorRecomendable(duenio) {
		return duenio.entrenadorRecomendable()
	}

	method entrenadoresRecomendables(duenio) {
		return duenio.entrenadoresRecomendables()
	}

	method valorTotalMascota(mascota) {
		return mascota.valorTotal()
	}

}

