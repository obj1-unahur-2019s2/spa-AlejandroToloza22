
object olivia {
	var con=6
	method recibirMasajes() { con+=3 }
	method discute() { con-=1 }
	method gradoDeConcentracion() { return con }
}

object bruno {
	var esFeliz = true
	var tieneSed = false
	var peso = 55000
	
	method esFeliz() { return esFeliz }
	method tieneSed() { return tieneSed }
	method peso() { return peso }
	
	method recibirMasajes() { esFeliz = true }
	method darseUnBanioDeVapor() { peso -= 500 ; tieneSed = true }
	method tomarAgua() { tieneSed = false }
	method comerFideos() { peso += 250; tieneSed = true }
	method correr() { peso -= 300 }
	method verElNoticiero() { esFeliz = false }
	
	method estaPerfecto() { return self.esFeliz() and not self.tieneSed() and self.peso().between(50000, 70000)
	}
	method mediodiaEnCasa() { 
		self.comerFideos()
		self.tomarAgua()
		self.verElNoticiero()
	}
}

object ramiro {
	var contracturado = 0
	var pielGrasosa = false
	method queTanContracturadoEsta() { return contracturado }
	method tienePielGrasosa() { return pielGrasosa }
	method recibirMasajes() { 
		if (contracturado == 0 || contracturado == 1) { 
			contracturado = 0
		}
		else { contracturado -= 2 }
		}
	method darseUnBanioDeVapor() { pielGrasosa = false }
	method comerseUnBigMac() { pielGrasosa = true }
	method bajarALaFosa() { pielGrasosa = true contracturado += 1
	}
	method jugarAlPaddle() { contracturado += 3 }
	
	method diaDeTrabajo() { 
		self.bajarALaFosa()
		self.comerseUnBigMac()
		self.bajarALaFosa()
	}
}





