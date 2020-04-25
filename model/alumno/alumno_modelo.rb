class Alumno_Modelo
	attr_accessor :alumnos
	def initialize()
		@alumnos = []
	end

	def registrarAlumnos(nuevoAlumno)
		alumnos.push(nuevoAlumno)
	end

end