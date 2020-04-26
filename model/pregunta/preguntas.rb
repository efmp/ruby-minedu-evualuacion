require_relative "respuestas.rb"
class Pregunta
	attr_accessor :codigo, :enunciado, :respuestas
	def initialize(codigo, enunciado)
		@codigo = codigo
		@enunciado = enunciado
		@respuestas = []
	end

	def registrarRespuesta(nuevaRespuesta)
		respuestas.push(nuevaRespuesta)
	end
end

