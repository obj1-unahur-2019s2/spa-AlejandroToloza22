import personas.*

object spa {
	var personaAtendida
	method atender(persona) {
		persona.recibirMasajes()
		persona.darseUnBanioDeVapor()
		if (personaAtendida == persona) {
			personaAtendida.recibirMasajes()
			}
		personaAtendida = persona
		}
} 
 