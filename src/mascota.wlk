class Mascota {

	var afectoRecibido = 0
	var property duenio = null
	var entrenador = null

	method recibeAfecto(cant) {
		afectoRecibido = cant
	}

	method darAmor()

	method diversion()

	method seguridad()

	method valorTotal() {
		return self.darAmor() + self.seguridad() + self.diversion()
	}

	method esEntrenadaPor(alguien) {
		entrenador = alguien
	}

	method esEntrenadaPor() {
		return entrenador
	}

	method efectoAlEntrenar()

}

class Canario inherits Mascota {

	override method darAmor() {
		return 0
	}

	override method seguridad() {
		return 0
	}

	override method diversion() {
		return 5
	}

	override method efectoAlEntrenar() {
	}

}

class Gato inherits Mascota {

	var nivelDeSeguridad
	var diversion = 0

	method seguridad(cant) {
		nivelDeSeguridad = cant
	}

	override method seguridad() {
		return nivelDeSeguridad
	}

	override method darAmor() {
		return afectoRecibido + (afectoRecibido * porcentajeAmor.amor())
	}

	method diversion(cant) {
		diversion = cant
	}

	override method efectoAlEntrenar() {
		diversion += (diversion * 0.1)
	}

	override method diversion() {
		return diversion
	}

}

object porcentajeAmor {

	var property amor = 0

}

class Perro inherits Mascota {

	var property nivelDeGuardian

	override method seguridad() {
		if (duenio.edad() < 18) {
			return (30 + nivelDeGuardian + 20)
		} else {
			return 30 + nivelDeGuardian
		}
	}

	override method darAmor() {
		return afectoRecibido * 2
	}

	override method diversion() {
		return (125 - duenio.edad())
	}

	override method efectoAlEntrenar() {
		nivelDeGuardian = nivelDeGuardian + (nivelDeGuardian * 0.1)
	}

}

class Labrador inherits Perro {

	override method darAmor() {
		return super() + 5
	}

	override method diversion() {
		return 130
	}

}

