require_relative "../model/tutor/tutores.rb"
require_relative "../view/vTutor.rb"
require_relative "../model/tutor/modeloTutor.rb"
class Tutor_Controlador
	attr_accessor :vista, :modelo
	def initialize(vista, modelo)
		@vista = vista
		@modelo = modelo
	end

	def mostrarTutores()
		vista.mostrarTutores(modelo.tutores)
	end

end

vista = VistaTutor.new
modelo = Tutor_Modelo.new
t1 = Tutor.new("t1", "8855447711", "Jimenez Peralta", "Pedro", "Padre")
t2 = Tutor.new("t2", "8855447711", "Rosas Pinedo", "Liliana", "Madre")
t3 = Tutor.new("t3", "8855447711", "Casas Escobar", "Piero", "Padre")
modelo.registrarTutor(t1)
modelo.registrarTutor(t2)
modelo.registrarTutor(t3)

control = Tutor_Controlador.new(vista,modelo)
control.mostrarTutores