
class Administrador
	attr_accessor :tutores, :colegios, :alumnos
	def initialize()
		@tutores = []
		@colegios = []
		@alumnos = []
	end

	def registrarTutor(nuevoTutor)
		tutores.push(nuevoTutor)
	end

	def registrarColegio(nuevoColegio)
		colegios.push(nuevoColegio)
	end
		def registrarAlumnos(nuevoAlumno)
		alumnos.push(nuevoAlumno)
	end
end