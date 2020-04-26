require_relative "../model/tutor/tutores.rb"
require_relative "../view/vTutor.rb"
require_relative "../model/tutor/modeloTutor.rb"
class Tutor_Controlador
	attr_accessor :vista, :modelo
	def initialize(vista, modelo)
		@vista = vista
		@modelo = modelo
	end

	def registrarTutor(codigo, dni, apellidos, nombre, parentesco)
		tutor = Tutor.new(codigo, dni, apellidos, nombre, parentesco)
		modelo.registrarTutor(tutor)
	end

	def obtenerTutor(codTutor)
		tutores = modelo.tutores
		for tutor in tutores
			if(tutor.codigo.eql? codTutor) then 
				return tutor
			end
		end
	end

	def listarTutores()
		vista.mostrarTutores(modelo.tutores)
	end

end
