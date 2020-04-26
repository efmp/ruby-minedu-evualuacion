require_relative "../model/alumno/alumnos.rb"
require_relative "../model/alumno/alumno_modelo.rb"
require_relative "../view/vAlumno.rb"
require_relative "../model/alumno/alumnoColegio.rb"
class Alumno_Controlador
	attr_accessor :vista, :modelo
	def initialize(vista, modelo)
		@vista = vista
		@modelo = modelo
	end

	def registrarAlumnos(*args)
		alumno = Alumno.new(*args)
		modelo.registrarAlumnos(alumno)
	end

	def obtenerAlumno(codAlumno)
		alumnos = modelo.alumnos
		for alumno in alumnos
			if(alumno.codigo.eql? codAlumno) then 
				return alumno
			end
		end
	end

	def  registrarTutor(codalumno, tutor)
		alumno = obtenerAlumno(codalumno)
		alumno.registrarTutor(tutor)
	end

	def listarAlumnos
		vista.listarAlumnos(modelo.alumnos)
	end
end


