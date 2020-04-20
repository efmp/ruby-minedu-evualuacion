class Evaluacion
	attr_accessor :codigo, :cantidadPreguntas, :tipoEvaluacion
	def initialize(codigo, cantidadPreguntas, tipoEvaluacion)
		@codigo = codigo
		@cantidadPreguntas = cantidadPreguntas
		@tipoEvaluacion = tipoEvaluacion
	end

	def calcularPuntajeDePreguntas
		100/cantidadPreguntas
		#if(cantidadPreguntas == 10) then return 100/cantidadPreguntas
		#elsif (cantidadPreguntas == 20) then return 100/cantidadPreguntas	
		#else return 0		
		#end
	end

	def calcularDescuentoPorRespuestaErrada #por definir
	end
end