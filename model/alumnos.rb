require_relative "tutores.rb"
class Alumno
	attr_accessor :codigo, :apellidos, :nombre, :edad, :genero,  :tutor
	def initialize(codigo, apellidos, nombre, edad, genero)
		@codigo = codigo
		@apellidos = apellidos
		@nombre = nombre
		@edad = edad
		@genero = genero		
		@tutor = []
	end
	def registrarTutor(nuevoTutor)
		if(tutor.length <2) then
			tutor.push(nuevoTutor)
		end
	end
end
#validaciones
t1 = Tutor.new("t1", "8855447711", "Jimenez Peralta", "Pedro", "Padre")
t2 = Tutor.new("t2", "8855447711", "Rios Rojas", "Lia", "Madre")
t3 = Tutor.new("t3", "8855447711", "Casas Escobar", "Piero", "Padre")
a1 = Alumno.new("a1", "Jimenez Caceres", "Eduardo", "14", "M")
a1.registrarTutor(t1)
a1.registrarTutor(t2)
a1.registrarTutor(t3) #no registra - OK



