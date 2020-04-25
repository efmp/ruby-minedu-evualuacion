class Tutor_Modelo
	attr_accessor :tutores
	def initialize()
		@tutores = []
	end

	def registrarTutor(nuevoTutor)
		tutores.push(nuevoTutor)
	end
end