class Simulacion
	attr_accessor :codigo, :evaluacion, :preguntas, :alumno, :respuestas, :puntaje
	def initialize(codigo, evaluacion, alumno, estado)
		@codigo = codigo
		@evaluacion = evaluacion
		@alumno = alumno
		@estado = estado
		@respuestas = []
		@puntaje = 0
	end

	def registrarRespuesta(pregunta, nuevaRespuesta)	
		#evaluacion.pregunta[0]
		respuestas.push(pregunta,nuevaRespuesta)	
	end

	def verificarRespuestaCorrecta()
		pregunta = evaluacion.pregunta[0]

		for pregunta in evaluacion.pregunta
			for rpta in pregunta.respuesta
				if rpta.codigo == respuesta.codigo
					then 
						if rpta.respuestaValida == true
							then puntaje+= 10
						end						
				end
			end
		end
	end

end