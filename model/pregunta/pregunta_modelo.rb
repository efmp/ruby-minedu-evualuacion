class Pregunta_Modelo
	attr_accessor :preguntas
	def initialize()
		@preguntas = []

	end	

	def registraPreguntas(nuevaPregunta)
		preguntas.push(nuevaPregunta)
	end

	def registrarRespuestas(codRepuesta, nuevaRespuesta)
		pregunta = obtenerPregunta(codRepuesta)
		pregunta.registrarRespuesta(nuevaRespuesta)

	end

	def obtenerPregunta(codPregunta)
		for pregunta in preguntas
			if(pregunta.codigo.eql? codPregunta) then 
				return pregunta
			end
		end
	end

end