class Colegio_Modelo
	attr_accessor :colegios
	def initialize()
		@colegios = []
	end

	def registrarColegio(nuevoColegio)		
		colegios.push(nuevoColegio)
	end
end