require_relative "../tutor/tutores.rb"
class Alumno
	attr_accessor :codigo, :apellidos, :nombre, :edad, :genero, :tutor, :evaluacion
	def initialize(codigo, apellidos, nombre, edad, genero)
		@codigo = codigo
		@apellidos = apellidos
		@nombre = nombre
		@edad = edad
		@genero = genero		
		@tutor = []
		@evaluacion = []
	end
	def registrarTutor(nuevoTutor)
		if(tutor.length <2) then
			tutor.push(nuevoTutor)
		end
	end
	def registrarEvaluacion(nuevoEvaluacion)
		evaluacion.push(nuevoEvaluacion)
	end
end




