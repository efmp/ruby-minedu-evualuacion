class DetalleEvaluacion
	attr_accessor :codigo, :evaluacion, :preguntas, :estado, :respuestas
	def initialize(codigo, evaluacion, preguntas, estado)
		@codigo = codigo
		@evaluacion = evaluacion
		@preguntas = preguntas
		@estado = estado
		@respuestas = []
	end

	def registrarPreguntas(nuevaPregunta)	
		respuestas.push(nuevaPregunta)	
	end



end