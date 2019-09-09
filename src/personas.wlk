object olivia {
	var nivDeConcentracion=6
	method recibirMasajes() { nivDeConcentracion+=3 }
	method discute() { nivDeConcentracion-=1 }
	method gradoDeConcentracion() { return nivDeConcentracion }
	method darseUnBanioDeVapor() {} //Cree este method para que no tire error al probar a olivia en la consola o en el test.//
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
	var nivDeContractura = 0
	var pielGrasosa = false
	method queTanContracturadoEsta() { return nivDeContractura }
	method tienePielGrasosa() { return pielGrasosa }
	method recibirMasajes() { 
		if (nivDeContractura == 0 || nivDeContractura == 1) { 
			nivDeContractura = 0
		}
		else { nivDeContractura -= 2 }
		}
	method darseUnBanioDeVapor() { pielGrasosa = false }
	method comerseUnBigMac() { pielGrasosa = true }
	method bajarALaFosa() { pielGrasosa = true nivDeContractura += 1
	}
	method jugarAlPaddle() { nivDeContractura += 3 }
	
	method diaDeTrabajo() { 
		self.bajarALaFosa()
		self.comerseUnBigMac()
		self.bajarALaFosa()
	}
}