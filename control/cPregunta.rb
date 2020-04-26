require_relative "../model/pregunta/preguntas.rb"
require_relative "../model/pregunta/pregunta_modelo.rb"
require_relative "../view/vPregunta.rb"
require_relative "../model/pregunta/respuestas.rb"
class Pregunta_Controlador
	attr_accessor :vista, :modelo
	def initialize(vista, modelo)
		@vista = vista
		@modelo = modelo
	end

	def registarPreguntas(*args)
		pregunta = Pregunta.new(*args)
		modelo.registraPreguntas(pregunta)
	end

	def registrarRespuestas(codPregunta, *args)
		respuesta = Respuesta.new(*args)
		modelo.registrarRespuestas(codPregunta,respuesta)
	end

	def listarPregunta
		vista.listarPreguntas(modelo.preguntas)
	end
end