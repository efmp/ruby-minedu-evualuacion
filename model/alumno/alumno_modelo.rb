class Alumno_Modelo
	attr_accessor :alumnos, :detalleAlumnos
	def initialize()
		@alumnos = []
		@detalleAlumnos = []
	end

	def registrarAlumnos(nuevoAlumno)
		alumnos.push(nuevoAlumno)
	end

	def registrarDetalleAlumno(nuevoDetalle)
		detalleAlumnos.push(nuevoDetalle)
	end
end